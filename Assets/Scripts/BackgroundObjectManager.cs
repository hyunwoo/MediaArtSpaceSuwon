using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BackgroundObjectManager : MonoBehaviour {

    public static BackgroundObjectManager Instance {
        get;
        private set;
    }
    public GameObject[] StarClusters;
    public Transform StarClustersParent;
    public int StarClusterCount;
    public Vector2 StarClusterSize;
    [Space]
    public GameObject[] Planets;
    public Transform PlanetsParent;
    public int PlanetsCount;
    public Vector2 PlanetSize;
    [Space]
    public int AreaSize;
    [Space]
    public Camera Camera;

    public Vector3 GetRandomPosition(){
        return new Vector3(
            Random.Range(0, AreaSize),
            Random.Range(0, AreaSize),
            Random.Range(0, AreaSize));
    }

    public Vector3 GetRandomSize(Vector2 fromTo){
        float size = Random.Range(fromTo.x, fromTo.y);
        return new Vector3(size, size, size);
    }


    void Awake()
    {
        Instance = this;
    }

    void Start () {

        for (int i = 0; i < StarClusterCount; i ++){
            int index = Random.Range(0, StarClusters.Length);
            Debug.Log("Generate Star Cluster Index : " + i);
            var starCluster = Instantiate(StarClusters[index]);
            starCluster.AddComponent<AutoRotate>();
            starCluster.transform.localRotation
                       .SetLookRotation(GetRandomPosition().normalized);

            var pos = GetRandomPosition();
            starCluster.transform.parent = StarClustersParent;
            starCluster.transform.localPosition = pos;
            starCluster.transform.localScale = GetRandomSize(StarClusterSize);
        }


        for (int i = 0; i < PlanetsCount; i ++){
            int index = Random.Range(0, Planets.Length);
            var planet = Planets[i];
            planet.transform.parent = PlanetsParent;
        }
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}

