{
    "id": "54ad995a-ae27-428e-8652-dab91288b246",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "GetMeMedia",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2020-17-17 09:01:53",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "bc312baa-4873-4ee9-b461-858a216c1db9",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "GetMeMedia.dll",
            "final": "",
            "functions": [
                {
                    "id": "164c9cbf-805d-4fe2-9edb-5980c21ab9b3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "SetPath",
                    "help": "",
                    "hidden": false,
                    "kind": 1,
                    "name": "SetPath",
                    "returnType": 1
                },
                {
                    "id": "1e1b47af-6842-4a39-adf9-880aeeb33e76",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GetStatus",
                    "help": "",
                    "hidden": false,
                    "kind": 1,
                    "name": "GetStatus",
                    "returnType": 2
                },
                {
                    "id": "54c35f73-9da4-49c9-b39d-6e4b89ecc3da",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "GetMedia",
                    "help": "",
                    "hidden": false,
                    "kind": 1,
                    "name": "GetMedia",
                    "returnType": 2
                },
                {
                    "id": "7e1620c0-685d-4fe8-b7f7-55cefc1e5b46",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "Reset",
                    "help": "",
                    "hidden": false,
                    "kind": 1,
                    "name": "Reset",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                "164c9cbf-805d-4fe2-9edb-5980c21ab9b3",
                "1e1b47af-6842-4a39-adf9-880aeeb33e76",
                "54c35f73-9da4-49c9-b39d-6e4b89ecc3da",
                "7e1620c0-685d-4fe8-b7f7-55cefc1e5b46"
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b2a9a68d-c44c-41b0-9070-dc39ff0ad642",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "libvlc.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "4653c271-6a2d-410d-b84e-f23fd7a90a17",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "libvlccore.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e89d3c2b-b468-4512-bebe-75e8678b90ff",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/plugins.dat",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "6e98608b-76ad-49df-9e13-62b5fe955a20",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libaccess_concat_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "cca18b66-55e2-44c7-a349-5ad1e9c2c3e2",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libaccess_imem_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "52fc0dba-75e0-440c-9c05-27ab39ac26be",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libaccess_realrtsp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "4101e2fe-f2b6-4d12-bf36-294552d8b9d4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libaccess_mms_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "23f1f339-3419-42b8-8c63-523112fd9e0c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libaccess_srt_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "22e0a0c0-5150-46f5-a460-8e889f53b29f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libbluray-j2se-1.1.2.jar",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "247e0067-c8bf-4aec-85d0-6b1098581260",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libaccess_wasapi_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "3b0c1b9d-8d00-4ff5-ad3c-432d82a9dec1",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libattachment_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ef256059-b093-4177-b2c3-281112544bab",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libdcp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "357d417d-a9d6-4b47-abfd-c68346e98c30",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libdtv_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7a0f1c20-af9e-4ddc-8efd-1f2873e12bf7",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libdshow_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "0731db9b-83b4-4d9d-a1ad-3534a4a55161",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libfilesystem_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "9823c2a8-6c62-4e7d-9745-df54603b0f6a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libdvdread_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2a20217f-8edd-4c26-8c00-6382daf78171",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libbluray-awt-j2se-1.1.2.jar",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f82ef3db-b873-45ec-9c9d-632775abba14",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libftp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "3abd398d-51e8-4bbf-ab4b-3b9d0ec84ad5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libhttp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "4f9df381-86d5-486f-b3a1-488e1bcdb37e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libdvdnav_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f80eec96-06e6-4cae-a596-959906573e76",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libidummy_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "07f444e4-de32-4cb5-8801-7b69b63be953",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libimem_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "53a22cd1-d843-4fd4-a146-4bd0802707dd",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/liblive555_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "d342df72-caa5-4d16-8ec6-a4e31196f6e1",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libhttps_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "197f9f07-c2a7-4f9d-ae75-c2e50dec9ed4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/liblibbluray_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "c04f2042-144a-434a-ab40-1588689e3679",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libnfs_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "0faa0505-e4d0-4b0d-ae5c-fb6e9cbd28a3",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/librtp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7fe4de49-f5cd-4d27-987d-872d909174b3",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libsatip_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "da239597-84f2-435e-948f-9bbc87f396e2",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libcdda_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "6a036d10-0bb8-4af0-b4aa-36d856e862ed",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libscreen_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f632c120-e430-468f-91ee-9630beac1072",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libsdp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "46890d6d-d413-4294-9f64-a5271a6d346d",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libshm_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b9f35e1f-a424-457b-b3d5-c21b2feb604b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libsftp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "75128543-4ed8-4f54-972b-02e809ea214f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libtimecode_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "a471ddfb-ffa3-4173-8288-2ac7d183170a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libsmb_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "d998214a-52c5-4029-84a1-9d3ed8dd5f8a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libudp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ec3ee64e-f07b-42ee-b35f-14a2f0a72cde",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libtcp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "5e924c5c-fd0e-4312-a6fe-81789ddb1955",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libvcd_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "39989dea-cbcf-4b24-b07f-ae46b1dfdd5a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libvdr_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "43fa91c0-0b9b-4e41-8045-bcaed89660b9",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access\/libvnc_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2d01df8d-1afd-463d-ac38-e85b3230ba53",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access_output\/libaccess_output_dummy_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "155a7d39-eabe-40d0-bb88-2db2bd7b130a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access_output\/libaccess_output_file_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "05d68d14-14a6-4a71-b529-a1ce88005e97",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access_output\/libaccess_output_http_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "da2bbf72-d630-4965-a4e9-e785419babbb",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access_output\/libaccess_output_srt_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "a79a3073-005d-47d4-94f8-13fe8a758bcc",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access_output\/libaccess_output_livehttp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "cf54c4f7-d662-42a6-b4c9-f355972ffd81",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access_output\/libaccess_output_udp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "a3c9dafa-0403-4a12-a6a8-ef937b004bc8",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/access_output\/libaccess_output_shout_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "71db3a4b-b997-4a2e-91a1-44f1a15c9305",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libchorus_flanger_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7d739c6f-6dc9-432a-901a-e9cc6d2fc6cc",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libaudio_format_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "fda8d1e3-6432-4eb2-a937-ee0ee3ff3913",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libcompressor_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "09183287-75f8-4aaf-ba21-afce818aae0d",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libaudiobargraph_a_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "fbdcad8b-f0b1-4333-ad2c-d401d7bd3467",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libdolby_surround_decoder_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "a4dc25fb-6f33-40de-a3be-d89ef26964dc",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libequalizer_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "743b96ce-cf4a-40d2-a204-e7194fb90798",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libgain_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2c803049-3fea-4846-b674-41608d44e2e4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libkaraoke_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "8530cd36-ddc5-4408-9ae3-84eb536504a3",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libmad_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "4d020c9b-f7e7-4ec3-94a9-b195aac1e85d",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libmono_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "14236217-8d5b-47b1-a541-9b66b815ec97",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libparam_eq_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "650a88a7-1787-4318-b4f9-9cbc91c347a1",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libnormvol_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "8a5095dc-1e27-4dc9-9065-a010ce599a8e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libheadphone_channel_mixer_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "6c8cf2cd-f0db-4224-88a3-a3a6a8bb888b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libremap_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "a64126ef-c099-433b-a871-ae5949b496dc",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libscaletempo_pitch_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "16520673-9980-4b13-84d4-dd7aed825c04",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libscaletempo_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "3fd9a914-3523-4f16-a371-f829e3bdde17",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libspatialaudio_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b9633970-dfe5-42eb-89e8-a74cea3b8c2c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libsamplerate_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "827ed6e0-8efd-40b2-9358-2137ccec324d",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libsimple_channel_mixer_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "1ee0e85d-9c08-4cb8-8ca7-56eda52e13ef",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libspeex_resampler_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "fadcc302-975a-4ff9-af3d-38669aa16a17",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libstereo_widen_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "cdba4339-b3a6-4bb8-9a59-7adb536d1992",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libtrivial_channel_mixer_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "32bd20a5-11b5-4423-847d-463ea72330c3",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libtospdif_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "d1c7bb9d-de21-4576-ab45-c0012de1f8d8",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libugly_resampler_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "bb97edd3-85cc-4dbc-8da1-0490f2703ddc",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_filter\/libspatializer_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "8b31a37f-9345-428c-a3b3-8979e908240d",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_mixer\/libfloat_mixer_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "6df2a004-e0d5-4d3a-82ac-e0b4069f2da4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_mixer\/libinteger_mixer_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "fe099d93-19f0-446e-a6e6-eb4933cbe7b9",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_output\/libafile_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "62b85f8f-8d2f-4a2d-af6d-3dc7132b566b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_output\/libadummy_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "9357c0d3-8c60-4184-b0c2-affa6af3b4ea",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_output\/libamem_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "137df28a-3c6d-45b3-9c73-6c6f5850bf87",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_output\/libmmdevice_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "dd433dd3-dcab-405d-a076-6d4f5ea2dfab",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_output\/libdirectsound_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7239120a-4c66-4d69-95d1-acaad40d6615",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_output\/libwasapi_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "744835f5-3e8c-42ca-9413-73cc097ad50f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/audio_output\/libwaveout_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "167d5cab-608f-4448-9a9c-e37d51f700d4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/liba52_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7e652f42-fa6c-4cb6-95de-482338af0072",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libadpcm_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "4878d2fb-4953-4b97-8f9f-7c0a335a1ccf",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libaes3_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "832af37f-6053-4010-a390-5b4578530cda",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libaraw_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "05963465-e475-400f-aba1-6a18e35d14f5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libaom_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "bfa5867e-16cd-456c-8ed9-17b5b88ae341",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libaribsub_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "202bfc97-946d-41d8-b44d-da3dd6383958",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libcc_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "1332fd73-f834-4dfd-a783-6a57a9610468",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libcvdsub_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "073965d2-25d9-43c4-9d0e-c60496928229",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libcrystalhd_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "56a20e10-8f3e-4392-a2b5-f5706b885de6",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libd3d11va_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f64de72f-2d7d-4cd3-af5a-933bdcc1d173",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libdav1d_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7dd68a79-94e8-45a3-8f84-acdd4924a223",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libdca_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e03da18b-a9c2-44a2-af9c-ef52d51d1493",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libddummy_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b734407a-2aaa-4581-acd9-690d23dea22c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libdmo_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ed65af31-9703-4a15-891a-bfe7cb91edf9",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libedummy_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b4acea80-64c1-4a28-ad40-4dcedbeef92f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libfaad_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "1fe793bc-bcc9-412e-a26a-7e7102cd7196",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libflac_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "18ac0d41-7feb-4383-8885-93c86596aa5e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libavcodec_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "56ce560a-e87c-4c7b-95d4-f6a7f0698e4b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libdxva2_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "bccbe014-27f9-4a8e-a4b8-dd4a01e36d42",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libdvbsub_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e6a918a4-5c36-4dce-b2d7-fd03b2716060",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libfluidsynth_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "dfb9ae0c-b6e2-4cd1-9d48-1d5d012dc6f6",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libg711_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "55843e49-95d4-4f88-913f-eb1968d290e9",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/liblibmpeg2_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "883ec9e2-040b-4391-b939-a0f5436e63a3",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/liblpcm_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "8f8bd4a9-9b12-4fc0-8fd6-a5f06c3422cc",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libkate_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2bdc0b2d-dd3d-4180-af88-dfee50cd7607",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libmpg123_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "a5b3fcdf-dfd0-4470-bd3c-ba81863bb045",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/liblibass_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e3dce625-2d1f-4226-b3f9-7d2e7e7457ac",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libjpeg_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "c79e96ae-a751-48ab-9a12-ec636d1c4f10",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/liboggspots_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "00815dba-99b3-4599-8ab1-cd78ebd8a762",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libmft_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e7e8574f-323d-4ca9-84ca-6a1b0842f5ed",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libopus_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "6ab3f2ca-9376-4e08-8c7c-c45e2cbcebef",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libqsv_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "cb8e6ace-cce7-484a-a2ad-38723b3515ef",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/librawvideo_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e7005234-9154-45d7-abf9-f807a67ffaa5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/librtpvideo_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ded08cab-6706-4ec8-89c3-b5e25dbf5211",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libscte27_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7a402e4b-b14b-423d-a012-9d986d41e22f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libcdg_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "9b4ff330-7d17-4430-b34a-64914f1fed4b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libscte18_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ac263ad7-e17d-403c-b26d-96d90c29e10d",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libschroedinger_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "c2a07a61-4194-4b06-83ad-ea22cc8228af",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libspdif_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7fe25462-e14a-49bc-a2d5-e3ae6274f026",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libsdl_image_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "937c02e4-eaf9-4815-8e0b-a4747b247c1e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libpng_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b21d3f4f-2ff3-4142-b42c-5bd5809caac1",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libspeex_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "5072eee1-9c21-40f4-8fd0-132407c38ea3",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libsubsdec_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "9126817b-762f-4436-986f-285a5ff1e580",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libstl_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "17164b97-44c8-443a-80b6-09a83c474498",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libspudec_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "093b3687-9a50-482d-ad3f-3d2948aef721",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libsubstx3g_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e4104f3d-bb57-4f72-864e-7b944679fe25",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libt140_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e0bbbce2-39f2-4077-a479-df8270a6d4ef",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libsvcdsub_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ab698a68-b573-4fe7-8907-f8759d824609",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libttml_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "fe1b4c14-c5bc-449a-a4bd-5676b00d4eea",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libtheora_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "68ccc85f-3856-43fb-8629-908091476bdb",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libsubsusf_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ce322dc4-1979-4a2c-918c-2b5467aa8c61",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libwebvtt_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "bd568213-bab6-43fe-bb9d-8b64247c483e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libvorbis_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "c284889d-aa43-4339-beef-b30532721723",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libzvbi_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2eda06a4-438c-4da9-b161-51449ecb98f4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libuleaddvaudio_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "08e65b0b-bd67-4211-a13a-9e6ddbe472b3",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libx264_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "c899a183-c348-49ff-a6ca-f4457be4e484",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libtextst_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "cfc16a82-bf30-4a5f-a211-681ac041289a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libtwolame_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "98dcd078-6062-4d38-9d8f-fd811e831bc2",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libvpx_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ae6c106a-8fbf-4934-a9c0-92ebb4f26ddb",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libx26410b_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7f1e3dae-632e-485b-a466-b1d8aa3ec9c4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/codec\/libx265_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "73270e7f-65d8-4cee-8248-3c53db124aa7",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/control\/libgestures_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f4ea59c7-1b05-4c51-94b0-24d905602425",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/control\/libhotkeys_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "8a8e057f-733b-490a-a4ed-9747aca5391b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/control\/libdummy_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "a31e9586-9e17-4061-98cb-380ba22ee431",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/control\/libnetsync_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "1a764d22-031b-40fe-aeaf-ebfbcda14287",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/control\/libntservice_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "8b8602ea-6543-492d-926f-7778859a6bcd",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/control\/liboldrc_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "5f86f163-5d6a-481e-b5c7-724cfa87cd32",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/control\/libwin_hotkeys_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "cfd12fb8-e3a4-482f-b658-447072e8e6e7",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/control\/libwin_msg_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "4684cea5-1858-4e4d-b172-76f5cc9408ad",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/d3d9\/libdirect3d9_filters_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "c61fa94b-6270-4286-b52d-13f66ee3343f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/d3d11\/libdirect3d11_filters_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "eeb16a9d-75fd-4ab1-8276-bccc9e2c80cf",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libaiff_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "4c5c37ed-38be-4e8b-8521-7c745d75cb4d",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libasf_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b3bc974d-0ff7-4ed5-b8d9-f493193fbec9",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libcaf_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "13e37fab-d7b8-4fe6-a280-d6ca1b2d36e0",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libdemux_cdg_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "53f6b987-7cd9-4b99-858f-88410f073df5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libdemux_chromecast_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "11aae673-bc2d-4c75-9053-0c2c27e62512",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libdemux_stl_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ee680d8f-c70a-4d69-a623-6835254a7290",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libdemuxdump_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "87a75da3-76af-4aec-a04c-cc5d2012bd3f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libdiracsys_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "9b892c02-2ff9-4a94-b9b2-ecae406ab73f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libdirectory_demux_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f45cf3c7-6efa-4a2c-9225-c1e00b9755a5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libes_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "bfcce990-a788-417b-8d9e-197539eff463",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libflacsys_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "5669dfd8-2560-4c3b-940c-b289685c7fd9",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libgme_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "392f3704-dbed-42aa-ad9c-7824bb39dff7",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libh26x_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "1db03668-f215-49a0-8ee0-7e646735634e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libimage_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "296223a6-5a0d-49aa-b3ee-7f7bb46aa59e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libadaptive_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "59c9158a-7f80-4771-9c19-481eb7786ad5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libavi_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "bc5b8655-47cf-4a6b-adf3-4d5cf88fd3bf",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libmjpeg_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7e1b57a2-9994-4b50-ae1f-66c3190a82e3",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libmp4_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ce5bb54a-7350-47de-beb7-3e2ffa5f2bb3",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libmod_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ca26d7c9-6cef-4a62-bfe9-d261a0620685",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libmpc_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f50e7482-8117-4090-90e0-f63c6507bfc4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libnoseek_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b6cafd14-7cfb-4f4b-b299-059526bd9bbf",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libmkv_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "38230542-3898-40c6-b471-386ddf35795f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libmpgv_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2613e189-1041-4de0-8a3c-50752a975c41",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libnsv_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "85bdbe48-cf72-427a-a60c-c01ecd25bd4c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libnuv_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "251918d7-ef7a-49dc-b75c-8a8b39ccae09",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libnsc_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "d5ed4630-1b11-443f-a355-1024df74b072",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libplaylist_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "8741f84e-90a8-4d89-bffe-6cf5ca51a3f0",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libogg_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ed0204b5-2194-4f19-af8a-fe7f64b8b8de",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libpva_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "3f25a59f-350c-4f38-bd63-a9c198708740",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libps_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b400e1b7-9c2b-44c2-b2dd-d56518c21501",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libreal_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7072306d-7dc9-4415-927c-417aac27f960",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/librawvid_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "add99228-2df6-4d5b-955b-67db844cc1d0",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/librawdv_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "cd18e32e-f4c3-4224-acc1-d24bb01d290c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/librawaud_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "c2ae01f9-a5d5-4941-af5d-722e3e7cccbf",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libsid_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "121273d3-e205-4d2b-8c0d-91ee499a8720",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libau_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "52d0458f-d61e-4320-b710-d07572893e63",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libtta_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "80491a1c-4d2e-4a18-aada-85bf4d86d6b3",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libts_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ece1c614-cb5c-4a13-81a1-87e690db371e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libsmf_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "3b7e0146-a37d-4322-bccf-f65578c0e1a9",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libsubtitle_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "c2f0e276-6010-4c16-8464-82bdffd283a0",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libvc1_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "676d65f4-8c2f-4d45-9ef4-6ec26b002525",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libty_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f1b35f6e-3a96-4d1d-b1ef-5f811f3565b4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libvobsub_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "daaacd4a-725f-4962-a4d6-39d83af18476",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libvoc_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "76935ced-4699-4e00-b501-03da0be6c097",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libxa_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "33954c2f-245b-4037-8980-7dedd7ccd64b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/demux\/libwav_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "eba03eae-9821-4f1c-a948-7d137abe0a8f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/gui\/libskins2_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "71b04283-4c35-499d-af65-c94525b752d2",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/gui\/libqt_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "9bc820eb-a586-4362-8c86-f91529b0d1e5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/keystore\/libfile_keystore_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ebc87c5b-693f-4b59-9e40-150510bc513b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/keystore\/libmemory_keystore_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "dabe7a94-ee9c-45ff-85e7-afc7ee2c9d70",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/logger\/libconsole_logger_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "76a3db12-5043-4986-bfca-3fe14beda095",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/logger\/libfile_logger_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f2a5b7f9-3967-443d-acb9-ea9e486bf76c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/lua\/liblua_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "3f8a3ba1-caa3-4313-8dd1-618ea4de765e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/meta_engine\/libfolder_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "57173283-6396-4e74-8148-8f661d4d72ba",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/meta_engine\/libtaglib_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "78c6fa36-fa12-40a3-9378-4eb087183f4f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/misc\/libaddonsfsstorage_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "20adf835-f419-402e-a918-793fe2556a52",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/misc\/libaudioscrobbler_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "fdac3ad1-9c37-48ba-8577-05d24c51ad0b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/misc\/libaddonsvorepository_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b627f70b-86cf-448c-bfa4-18d980d4110e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/misc\/libexport_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "677db394-874c-4d55-a6f0-f31751d4d9f2",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/misc\/libfingerprinter_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "6e3df62f-e800-442b-b0ff-ef07f07ed344",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/misc\/liblogger_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b125ce8b-97fe-439e-a8e9-55b7d656bdbf",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/misc\/libgnutls_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "89023e07-65a1-4352-a936-52c66377a10c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/misc\/libstats_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ec9953b8-7c86-44be-9d44-20449e0d5bad",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/misc\/libvod_rtsp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "79d093f2-87fe-42d1-bc5e-cc8c0182a49d",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/misc\/libxml_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "69852d51-ebe0-4e28-8001-b9f4d7bf0389",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/mux\/libmux_asf_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "543ba1db-6b75-4a85-9727-6b30573b62d8",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/mux\/libmux_avi_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "76c9cd2d-e102-499e-84dd-610d1535b275",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/mux\/libmux_mp4_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "176af962-ed81-433c-8d1e-aafde3a010cb",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/mux\/libmux_dummy_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "1a3639b7-ba8e-4e97-aa3a-f39bf56b6515",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/mux\/libmux_mpjpeg_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e3b5dbee-ea3d-4992-a6c8-db404d1a9443",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/mux\/libmux_ogg_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b2d3bbd1-0c78-42e2-b785-74e22b619812",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/mux\/libmux_ps_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "a1b85128-db6c-40da-986c-014c2187bb4b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/mux\/libmux_ts_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "0c8becc9-b066-4041-9d53-ecc7ad736436",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/mux\/libmux_wav_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "a8759fba-9725-4b3e-bc04-f5d28608e3f0",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/packetizer\/libpacketizer_copy_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "d771d737-9689-4464-ac01-c6797e4f64cf",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/packetizer\/libpacketizer_av1_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e5187e3f-f6a1-4481-be30-3cd84f49f548",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/packetizer\/libpacketizer_a52_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "dd970e0d-d8b2-42bc-a9ea-3aea56f1929c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/packetizer\/libpacketizer_dts_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "515eb8fd-18b6-4536-ac60-670981840019",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/packetizer\/libpacketizer_dirac_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "13edc0dd-1ea8-4786-a896-fd7051fef7db",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/packetizer\/libpacketizer_flac_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "52c849c9-d37e-4907-afff-ded2baca80ce",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/packetizer\/libpacketizer_hevc_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "dee1f73b-35eb-4fa7-b8ae-4ede2e86bca5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/packetizer\/libpacketizer_h264_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "af49e249-de4f-4507-bed1-f10edd7ff0b4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/packetizer\/libpacketizer_mlp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "00992998-3653-4e8b-b50e-49f2852b6b6e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/packetizer\/libpacketizer_mpeg4audio_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "859da814-0335-445b-b531-d572bace0666",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/packetizer\/libpacketizer_mpegaudio_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "947ad190-7a0c-4daa-aabf-41b2c3ad09f0",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/packetizer\/libpacketizer_mpegvideo_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "219f3f38-33ad-425a-8143-831b83ed6f7a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/packetizer\/libpacketizer_vc1_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "eaa68f9c-3b4d-43e1-a308-4fe462e363b6",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/packetizer\/libpacketizer_mpeg4video_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "25b5bd2b-a5cc-4a8a-ab5e-f03f4249928e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/services_discovery\/libmediadirs_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "18b33777-6047-450f-9ea0-a5acc86d69c7",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/services_discovery\/libpodcast_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2afdbc54-ae4a-4e01-919b-53e6955928a6",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/services_discovery\/libsap_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "de75775a-25a9-40eb-b9a3-14f494610cbe",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/services_discovery\/libupnp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "eb04e7da-ad72-42e7-ab45-a57c89788e96",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/services_discovery\/libmicrodns_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7828b829-ed58-45bd-94ce-274ff97449a7",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/services_discovery\/libwindrive_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "22b0217d-01af-438e-9538-62b9aacd01b5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/spu\/libmarq_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "5a025fbf-abe9-4af7-8299-b197ad72625d",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/spu\/liblogo_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "707417e4-0dab-4cce-b23d-5c820d8aaf77",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/spu\/libmosaic_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "a221f5c9-e514-49a7-bf9f-0f0260e8ff8e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/spu\/libaudiobargraph_v_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "0b34f8fa-513a-43fa-9855-857be2f7c7bc",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/spu\/librss_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "6d7750b1-c80c-422a-ae12-d44c5efbcd9e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/spu\/libremoteosd_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "5ad61ecf-29b8-4c87-a08b-3409083e22b2",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/spu\/libsubsdelay_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "1fc96bd9-14f8-45cb-b522-546e78b05e89",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_extractor\/libarchive_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "9fbc5767-ff90-4359-83a5-d59f7579af6c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_filter\/libadf_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2ecf0cce-aea2-44cb-9fb8-14a3c6b5e8b5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_filter\/libcache_block_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f83ef556-a180-473b-8ce3-5c6be85114c1",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_filter\/libaribcam_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "5dc1cf7b-3fd3-43a9-95e7-91990c730c12",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_filter\/libinflate_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "47c8bcb2-11a1-4320-b9d2-196738e63275",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_filter\/libcache_read_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f3fffb60-dc69-444c-8888-c4347e5af989",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_filter\/libprefetch_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "bf923ea9-2b8a-43d5-a305-5c8ff3406715",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_filter\/libskiptags_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e3358434-c981-47b4-bcef-080ce1839391",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_filter\/libhds_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "577eabad-7f65-4e7a-a110-76ac31f4df21",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_filter\/librecord_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "894c6a86-7dd5-4dc2-ae97-f7f77389656f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_autodel_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "0973df3d-9435-4311-974c-22867629dd29",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_cycle_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "938e1303-68e6-4505-869e-ea68c0a2d4a7",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_delay_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b6ce1af3-fe0d-43a6-b1f9-7fde59245ef6",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_chromaprint_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "676592f7-de35-4689-a1b8-ab6fcfbfa584",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_display_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e77777b0-bb0c-4050-9e35-863b8912c922",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_description_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e966b448-4baf-40a8-9af9-5a008b98b3d0",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_chromecast_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7cce039e-2a3e-4f9f-949a-ba9b5f93b5fb",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_bridge_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "0878f0b7-8276-4ebb-946b-1465569c5397",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_duplicate_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2efcd344-2c72-428c-8bb6-c4d82a5dda17",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_dummy_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e503cf23-37b7-47f7-aeca-a1e66b4e9c57",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_record_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "21848598-ed32-4b14-b9d1-a7c32614a9dd",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_gather_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "a776fa9c-6c6c-48d6-b55e-79c3a479eee0",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_es_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "807b4c40-3b51-4881-8e07-ae21d16d0997",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_mosaic_bridge_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "22bf20e1-66cc-4e8c-8256-8b2f3a43cfdc",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_setid_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2dc3ff49-cf9f-4194-90bf-566d0f6b569c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_smem_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "8e9d3f19-96dc-4715-a23f-b9a553368fcd",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_rtp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "6150abca-9d98-45f8-b2f9-2c200d30fa9e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_stats_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2def65af-ee11-4aec-88cf-b53de452b535",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_transcode_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "c4bf7036-c910-4f13-a702-aa8e6bf41b8b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/stream_out\/libstream_out_standard_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2199afeb-f0ac-41e3-8fdb-7a6b885e2b03",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/text_renderer\/libfreetype_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "16eabfd1-9e14-4b2c-b43b-b717b5a65079",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/text_renderer\/libsapi_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "69a662e1-68e3-4e24-93d9-5776f3f12ecc",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/text_renderer\/libtdummy_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7576b4a6-d499-4090-b30f-b7cb492d2cff",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libchain_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "dbfeee24-6c36-421d-8163-a73e24f67fe8",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libgrey_yuv_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "0a75674d-12e4-45c0-9589-48e652f600f0",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libi420_10_p010_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "4f52a9a7-6292-4685-9795-e3962ba74888",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libi420_rgb_mmx_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "df0003d2-0170-469d-8aef-18b654dfe7c2",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libi420_rgb_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "534a9251-ed2e-4349-abe7-f9626297e4c1",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libi420_rgb_sse2_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2d6719db-9305-4404-9964-a9f62e50b180",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libi422_i420_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "d92aa364-1573-45d7-94db-cb44bad0d06d",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libi420_yuy2_sse2_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "30efa671-3b2a-4bfd-bbec-40e967e69ed7",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libi420_yuy2_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7dcc73c4-4ba1-43ec-9202-91702dc00303",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libi420_yuy2_mmx_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "3c86b232-808f-4599-a381-b1e076245a57",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/librv32_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "0a8c8ce8-29c5-4837-a0eb-e8f80cd9cd23",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libi422_yuy2_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f5e3b294-d0fc-4d3d-8209-d773e0c7f25e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libi422_yuy2_mmx_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "53104c73-8784-4795-bab8-ed626dbb6d7b",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libswscale_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "035572f0-e8f7-40d4-9b79-46afb683872f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libi422_yuy2_sse2_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "0214fd14-fbdb-429f-8be9-2636549332a0",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libi420_nv12_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2dac4c6d-6876-43b4-bb26-267433447769",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libyuvp_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e101b0df-f9a2-4bae-b8ef-224db620299e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libyuy2_i420_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b5f19644-6661-459b-b8f1-5cab4fb89ab1",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_chroma\/libyuy2_i422_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "847fd222-4b56-407f-9f1b-e1e3d0c8e311",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libadjust_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "d17384bd-8201-45b5-aa57-44e459fcd458",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libalphamask_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "eb5c1eab-ca66-41b3-b46e-e406cf37ad8a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libanaglyph_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "36be580b-a909-43c9-b0b8-417e45b52fa8",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libantiflicker_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "a65e034a-f27e-4e35-94ad-215997e67955",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libball_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "70a88e33-7e4d-4ace-8c8a-4caf4663408a",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libblendbench_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "c2ba6bd8-925e-4ebb-b3a5-b4d3bc4907eb",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libcanvas_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "d005ba60-bb78-4040-a03c-a8fb92a48f09",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libblend_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "7f9601fb-4764-4b7c-8a1b-45fc377faf76",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libbluescreen_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "40dc18f4-b809-47d6-81a4-f5cfe54b3809",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libcolorthres_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e51198b6-b423-4619-ad21-fcea80a074cf",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libcroppadd_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "2dedb7b1-5d4d-426a-a03f-d60b2e6b582c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libedgedetection_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "a06052dd-322d-44b1-92dc-ffac392ae83e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libdeinterlace_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "3b1aa4a7-52bb-4109-bae1-33912d37f571",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/liberase_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "38ff4fbb-01b3-4c75-839e-169c4d068b39",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libextract_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "97c29ddf-46b5-4c4c-b619-0c128e249da5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libfps_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "4f1ec5a4-6439-4952-95da-68bb9859428f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libfreeze_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "d53d66ef-1136-44d7-94cb-92b519443f9c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libgradient_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "409f1e6a-5d6c-40de-ae48-c18bb091e312",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libgradfun_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "93cdae5c-197e-4c19-a503-c834a47dd566",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libgaussianblur_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f13efdc1-95df-4363-97b6-225998b50922",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libmagnify_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "d9c70d76-5ccd-4298-9262-133a16f0d485",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libinvert_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "095addc6-1192-46cf-b710-1e9591012a4f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libhqdn3d_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "cd25597b-1d8e-4a50-bec0-835d490da794",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libgrain_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "20ebdb2b-9f19-4796-90be-df5d5088f5f5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libposterize_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e867b2d0-b10e-444f-a40e-5fc84a8c4685",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/liboldmovie_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "d8666b30-48b1-4201-a8a5-59139bf13ef1",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libmotionblur_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "92effc49-b081-4a14-bb52-05d59ded618f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libpsychedelic_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "51e666e6-87f2-48b9-8353-d594a11ec752",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libripple_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ff603adf-ca2c-4f47-a773-81ae7d1a0c26",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libpuzzle_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "8637058c-c455-4206-9887-936f4472eb01",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/librotate_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "a3947745-4e23-442b-90f5-021d6a2836ca",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libpostproc_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "d460c505-9a06-4b0d-ae7f-d9fe13a7b619",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libmotiondetect_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "0c019f1d-f0d4-461c-b4e3-3ae124b4f518",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libmirror_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "dbfaca87-1352-405c-885a-16817328f021",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libscene_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "f70b7244-2572-4aa2-ae9b-2a9d393c2293",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libsepia_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "27ea94e9-a684-4bb2-9a0e-71beb4a0dc24",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libwave_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "60e3cb16-fd4f-4ac7-94de-92a49a251d0d",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libsharpen_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "9c3ce549-ac5a-44e3-9e41-64516f090a6f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libvhs_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "e2dd0c25-18e7-4fa6-9003-0593814c5dbf",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libtransform_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "fc2aba6d-1dd3-4aeb-8ba8-d97c6db9f132",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_filter\/libscale_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "3330b1b0-6ebe-44c3-9b89-d82cfdecc116",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_output\/libcaca_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "4b28d29b-6cd3-4b7d-98df-9489d2aa4126",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_output\/libdirect3d9_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "9ec6b2b2-8613-4591-ae0e-8c33602015a2",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_output\/libdrawable_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "336f069c-586c-4a82-acf5-e519b337a0e7",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_output\/libdirect3d11_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "bbfdd3f5-7a4a-4eff-8eca-48c47a87ee66",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_output\/libvdummy_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "de2cc7ca-2441-4e4c-873a-67ca78814d13",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_output\/libflaschen_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "54a488b9-dcbf-41c5-989a-aab2d2ff798c",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_output\/libdirectdraw_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "ae3268e0-c94b-440d-af70-c155385d8ca5",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_output\/libwgl_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "03f0f083-e8e4-47ea-8c72-cdb3271f51a8",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_output\/libyuv_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "fe4b7061-62b5-4445-8d43-db7a2323134f",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_output\/libwingdi_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "45fef52c-adef-4375-88fa-48c1571afe65",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_output\/libvmem_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "360aa386-4fad-4d37-9fc0-c1d77469222d",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_output\/libwinhibit_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "9ede5b9d-26b5-4626-9145-98ca73e5d01e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_output\/libgl_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "bdef4b7c-e50d-4e17-b754-ff9ed8d72d56",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_output\/libglwin32_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "b08cd480-f95a-45ca-b2c3-e42b02537f44",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_splitter\/libclone_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "19556eb2-0dbf-4bee-8f94-4f9b92abaffc",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_splitter\/libpanoramix_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "86f9c10e-e353-4cee-bffd-85839e198e99",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/video_splitter\/libwall_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "97d097ea-f511-4c5f-9d3f-8c54170beabb",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/visualization\/libgoom_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "08727b9d-e5f8-450c-8f84-6343811586ae",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/visualization\/libglspectrum_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "cdf45cb8-d1ca-4e8e-8db3-d9429eb692ab",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/visualization\/libprojectm_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        },
        {
            "id": "c010d642-b868-4cc1-86ed-a6887b2e48f9",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "plugins\/visualization\/libvisual_plugin.dll",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": -1,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "6.6.6"
}