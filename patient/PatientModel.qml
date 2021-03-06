
pragma Singleton

import QtQuick 2.9

ListModel {
    property QtObject selection
    ListElement {
        patientId: "15881123"
        firstName: "Julia"
        title: "Ms."
        lastName: "Jefferson"
        email: "Julia@example.com"
        address: "Spandia Avenue, Suite 610"
        city: "Toronto"
        zipCode: "92334"
        phoneNumber: "0803-033330"
        notes: "Very demanding patient."
        history: "21.4.2014|Order|coffee~23.4.2014|Order|poster~29.4.2014|Invoice|poster 40$~05.5.2014|Overdue Notice|poster 40$"
    }

    ListElement {
        patientId: "29993496"
        firstName: "Tim"
        lastName: "Northington"
        title: "Mr."
        email: "Northington@example.com"
        address: "North Fifth Street 55"
        city: "San Jose"
        zipCode: "95112"
        phoneNumber: "09000-3330"
        notes: "Very good patient."
        history: "18.4.2014|Order|orange juice~23.4.2014|Order|chair~24.4.2014|Complaint|Chair is broken."
    }

    ListElement {
        patientId: "37713567"
        firstName: "Daniel"
        lastName: "Krumm"
        title: "Mr."
        email: "Krumm@example.com"
        address: "Waterfront 14"
        city: "Berlin"
        zipCode: "12334"
        phoneNumber: "0708093330"
        notes: "This patient has a lot of Complaintts."
        history: "15.4.2014|Order|table~25.4.2014|Return|table~28.4.2014|Complaint|Table had wrong color."
    }

    ListElement {
        patientId: "45817387"
        firstName: "Sandra"
        lastName: "Booth"
        title: "Ms."
        email: "Sandrab@example.com"
        address: "Folsom Street 23"
        city: "San Francisco"
        zipCode: "94103"
        phoneNumber: "0103436370"
        notes: "This patient is not paying."
        history: "22.4.2014|Order|coffee~23.4.2014|Order|smartphone~29.4.2014|Invoice|smartphone 200$~05.5.2014|Overdue Notice|smartphone 200$"
    }

    ListElement {
        patientId: "588902396"
        firstName: "Lora"
        lastName: "Beckner"
        title: "Ms."
        email: "LoraB@example.com"
        address: " W Wilson Apt 3"
        city: "Los Angeles"
        zipCode: "90086"
        phoneNumber: "0903436360"
        notes: "This patient usually pays late."
        history: "17.4.2014|Order|soft drink~23.4.2014|Order|computer~29.4.2014|Invoice|computer 1200$~07.5.2014|Overdue Notice|computer 1200$"
    }

    ListElement {
        patientId: "67873693"
        firstName: "Daniel"
        lastName: "Krumm"
        title: "Mr."
        email: "Krumm@example.com"
        address: "Waterfront 14"
        city: "Berlin"
        zipCode: "12334"
        phoneNumber: "0303033330"
        notes: "This patient has a lot of Complaaints."
        history: "23.4.2014|Order|jacket~25.4.2014|Return|jacket~28.4.2014|Complaint|Jacket had wrong color."
    }

    ListElement {
        patientId: "78885693"
        firstName: "Vanessa"
        lastName: "Newbury"
        title: "Ms."
        email: "VanessaN@example.com"
        address: "Madison Ave. 277"
        city: "New York"
        zipCode: "10016"
        phoneNumber: "0503053530"
        notes: "Deliveries sometime do not arrive on time."
        history: "19.4.2014|Order|coffee~23.4.2014|Order|bicycle~29.4.2014|Invoice|bicycle 500$~06.5.2014|Overdue Notice|bicycle 500$"
    }
}
