*** Variables ***
@{Ma_list1}=    1    2    3    4
@{Ma_list2}=    samedi    dimanche    lundi    mardi    mercredi


*** Test Cases ***
boucle for 1
    FOR    ${element}    IN    @{Ma_list1}
        Log To Console    ${element}
        
    END
boucle for 2
    FOR    ${element}    IN    @{Ma_list2}
        Log To Console   ${element}
        
    END
boucle for 3
    FOR    ${counter}    IN RANGE    2    21    5
        Log To Console   ${counter}
        
    END
boucle for 4
    FOR    ${element}    IN    @{Ma_list1}
        Log To Console    ${element}
        Exit For Loop If    ${element==2}
        #Exit For Loop If    ${element}==2    BREAK
        
    END
boucle for 5
    FOR    ${element}    IN    @{Ma_list2}
        Log To Console   ${element}
        Exit For Loop If    '${element}'=='samedi'
        
    END


*** Keywords ***