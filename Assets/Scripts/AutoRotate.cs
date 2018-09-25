using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AutoRotate : MonoBehaviour {

    // Use this for initialization
    Vector3 axis;
    float speed;
	void Start () {
        axis = BackgroundObjectManager.Instance.GetRandomPosition().normalized;
        speed = Random.Range(-1f, 1f);
    }
	
	// Update is called once per frame
	void Update () {
        transform.Rotate(axis, speed * Time.deltaTime);
	}
}
