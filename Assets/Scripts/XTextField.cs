/*************************************************************************************
 *
 * 文 件 名:   XTextField.cs
 * 描    述: 
 * 
 * 创 建 者：  洪金敏 
 * 创建时间：  2021-08-01 00:06:52
*************************************************************************************/

using System.Collections;
using System.Collections.Generic;
using System.Globalization;
using UnityEngine;
using UnityEngine.UI;

public class XTextField : Text, IComponentBinder
{
    public void Bind(string value, string oldValue)
    {
        Bind<string>(value, oldValue);
    }

    public void Bind<T>(T value, T oldValue)
    {
        this.text = value.ToString();
    }
}