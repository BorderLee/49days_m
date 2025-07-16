using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChoppingBoard : MonoBehaviour
{
    private void OnMouseUp()
    {
      if (Hand.Instance.handIngredient != null)
        {
            GameObject dropped = Hand.Instance.Drop();

            // 위치 고정
            dropped.transform.position = new Vector3(5f, 3f, 0f);

            Debug.Log("도마 위에 재료가 내려졌습니다.");
        }

    }
}

