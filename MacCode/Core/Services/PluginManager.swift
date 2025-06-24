import Foundation

protocol Plugin {
    var name: String { get }
    func activate(context: PluginContext)
}

struct PluginContext {
    unowned let documentManager: DocumentManager
}

final class PluginManager {
    private var plugins: [Plugin] = []
    private let context: PluginContext

    init(context: PluginContext) {
        self.context = context
    }

    func register(_ plugin: Plugin) {
        plugins.append(plugin)
        plugin.activate(context: context)
    }
}
