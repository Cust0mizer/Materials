Мои тесты.
```Csharp
using FMOD.Studio;
using UnityEngine;
using FMODUnity;
using System;
using FMOD;

public class TestApiFMOD : MonoBehaviour {
    [SerializeField, Range(0, 1)] private float _soundValue = 1.0f;

    void Update() {
        if (Input.GetMouseButtonDown(0)) {
            ExampleOneShot();
        }

        SetSoundVolume(_soundValue);
    }

    private void ExampleOneShot() {
        EventReference reference = new EventReference() { Guid = new GUID(new Guid("{be1754d3-cb5c-4f0c-b774-7c4c77118173}")), Path = "event:/MouseClick" };
        RuntimeManager.PlayOneShot(reference);
    }

    private void ExampleParams() {
        EventReference reference = new EventReference() { Guid = new GUID(new Guid("{be1754d3-cb5c-4f0c-b774-7c4c77118173}")), Path = "event:/MouseClick" };
        EventDescription description = RuntimeManager.GetEventDescription(reference);

        if (description.getParameterDescriptionByName("name", out var parametr) == RESULT.OK) {
        }
    }

    private void SetSoundVolume(float volume) {
        Bus soundBus = RuntimeManager.GetBus("bus:/");
        soundBus.setVolume(volume);
    }
}
```


