/*************************************************************************************
 *
 * 文 件 名:   ModuleManager.cs
 * 描    述: 
 * 
 * 创 建 者：  洪金敏 
 * 创建时间：  2021-08-01 13:28:13
*************************************************************************************/

using UnityEngine;

public class ModuleManager
{
    public GameObject OpenSample()
    {
        var prefab = Resources.Load<GameObject>("SamplePanel");
        var panel = GameObject.Instantiate(prefab);
        return panel;
    }

    private static ModuleManager _instance;

    public static ModuleManager GetInstance()
    {
        if (_instance == null)
        {
            _instance = new ModuleManager();
        }

        return _instance;
    }
}