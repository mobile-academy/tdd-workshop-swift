//
// Copyright (c) 2017 Mobile Academy. All rights reserved.
//

import Foundation

@testable
import TDDWorkshop

class AgendaProviderFake: AgendaProviding {

    var reloadAgendaCalled = false
    var completion: (() -> ())?

    func simulateSuccessfulReload(_ items: [AgendaItem]) {
        self.agendaItems = items
        self.completion?()
    }

    // MARK: AgendaProviding

    var agendaItems: [AgendaItem] = []

    func reloadAgenda(_ completion: @escaping () -> ()) {
        self.reloadAgendaCalled = true
        self.completion = completion
    }
}
