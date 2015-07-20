# Issue tracker


## Open

1. There is no generic drug indicator
    * Opened 0a85ceab839fc8b4f9f9df27c0b6afe36cdf3069
    * Link from NDC translation table
2. Map claim type to values compatible with Oregon DMAP
    * Opened 7b7efde633953f96b18e459b2d5a14365e3af61b
    * Partial fix e87fe5e4a125e243914223cb3fd560fd5613ac38
3. Need to get days supply
    * Opened 3a318db9c743670dd69af309f1b63f2c3d7b4719
    * See Brie Noble's email from Tue 6/23/2015 9:35 AM
4. Incorporate new `isVisitInpatientThruED` and `isVisitEDPriorToInpatient` logic
    * See b41938241733452cc08f2eb435919cb054567499 from *MedicaidDataProcessing*


## Closed

* Need to reconcile small discrepancy with Jodi's ACC eligibility algorithm
    * Opened 59cf6c2fd7a62e9dd9d4fa00101f328bcab02381
    * Closed 305c205601e75f31bb54577175c4be657fadac4d
* isVisit* indicators need to use ICD-9 codes
    * Opened 722deb1028b27424e6a9d863a6adddfaabf5cff0
    * Closed 828e876315e75822361ce84063a8d16ca8be4cf8
* Add placeholder for sensitive conditions indicator
    * Opened bd6158d50ec7dcd7b75169b723ede17958371200
    * Closed 5a898cc0fd770cde0ac52c0a92cd877c1f06e51c
* Place of service is NOT the variable `POC_CD`
    * Opened 89001a34b27c624239fad90d1d85f0d9832c28e6
    * Closed 30f02570e2222669cc43e6b9e6ee9ed18cab8b01
* Need to complete cohort variable
    * Opened 5a898cc0fd770cde0ac52c0a92cd877c1f06e51c
    * Closed 6832afa96a2e4b9d2429d2d567e1eb4c03792245
* `makeICD9.Rmd` needs to be run after `makeClaims.Rmd` and `makeRxClaims.Rmd`
    * Opened 8edd050ecdf261d06ea26d9608324d8a9b4b8b88
    * Closed 5eb05617a388d95539f4a8bbe0113edc2386048a
* Drop `Snapshot_Period_ID` from the `mem_detail_Colorado` datasets
    * Opened 7a23f4fbd637cfcf12e7324e20284c6e007ec1b1
    * Closed 34a820f3ae7cdbb3993bdb6789766559dd87a2e0
* Add `D` prefix to `memberID`
    * Opened 09e84c25e48bb0a3554ac50f09d60e50c8971987
    * Closed 31d38361585d6b062b81070b0b34517949e13642
* Save `memberMonthsLookup.RData` to disk
    * Opened 32bffecc30e04cc9cef94631bfbb5906bfc09065
    * Closed 807e936d8f0b74170b30ca87494820e2e8d2b419
* Verify that claims are only included for enrolled clients
    * Opened 18b28eeed2652646048ef42508b7adf9270bad34
    * Closed 
* Add provider ID (`prov_bill_id`) on to the claims
    * Opened 6c2f742ba1d48913da67d8f8e1348f62e69324c7
    * Closed ecb9987bd92df67994d8b111f848b59d691ae5b2
* Rename some variables
    * Opened 2f07eb7458c923d41bd2f692aaeba2300438e3f9
    * Closed 868951a9c3873f8b3b26f2d215ae76fd5c3cb040
* Implement recommendations suggested in `checkOtherDiagnosisFile.html`
    * Opened 87a81f754af672c88625c13446d0087eb1221c3d
    * Closed 09c945e2d9cf5d1e9e05a6e5a2103b41213ab36e
* Verify that claims are only included for enrolled clients
    * Opened 18b28eeed2652646048ef42508b7adf9270bad34
    * Closed 857f2f5cac9f9a7f9a47b95034e90d0b5b31c435
* Investigate age issue
    * Closed 0b90d6f9b0688a872c548bff2541710418cdc8af
* Implement Rich's logic
    * See Rich's email from Thu 7/2/2015 3:58 PM and Thu 7/2/2015 6:04 PM
* All values of monthsEnrolledPriorQtr are NA
    * Opened bca3f6477a784b055b8518603728b2e0af81820d
    * Closed 
* Process flow diagram does not display in rendered HTML
    * Interim fix is to list out the program flow sequence
    * Closed: diagram renders in Chrome; does not render in RStudio's browser
* `fileInfo.csv` does not get updated
    * Closed: output path is fixed
