using UnityEngine;

public class InstantiateMultiple : MonoBehaviour {
    public GameObject prefab;
    public int numberOfObjects = 10; // Define the number of objects you want to instantiate.

    private GameObject[] objects; // Array to store the instantiated objects.
    private int deactivateStep = 0;

    void Start () {
        objects = new GameObject[numberOfObjects];

        // Instantiate the objects in a loop.
        for (int i = 0; i < numberOfObjects; i++) {
            objects[i] = Instantiate(prefab, transform.position, Quaternion.identity);
            objects[i].SetActive(false);
        }

        InvokeRepeating("DeactivateObject", 1f, 1f);
    }

    void DeactivateObject () {
        if (deactivateStep < numberOfObjects) {
            objects[deactivateStep].SetActive(false);
            deactivateStep++;
        } else {
            // Stop the InvokeRepeating once all objects are deactivated.
            CancelInvoke("DeactivateObject");
        }
    }
}
