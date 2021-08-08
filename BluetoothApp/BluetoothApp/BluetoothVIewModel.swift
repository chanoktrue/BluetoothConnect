//
//  BluetoothVIewModel.swift
//  BluetoothApp
//
//  Created by Thongchai Subsaidee on 8/8/2564 BE.
//

import SwiftUI
import CoreBluetooth

class BluetoothViewModel: NSObject, CBCentralManagerDelegate, CBPeripheralDelegate, ObservableObject {
    
    var centralManager: CBCentralManager!
    var peripheral: CBPeripheral!
    
    func startCetralManager() {
        self.centralManager = CBCentralManager(delegate: self, queue: nil)
    }

    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch central.state {
        case .unsupported:
            print("BLE is unsupport")
        case .unauthorized:
            print("BLE is unauthorized")
        case .unknown:
            print("BLE is unknow")
        case .resetting:
            print("BLE is resetting")
        case .poweredOff:
            print("BLE is power off")
        case .poweredOn:
            print("BLE is power on")
            
            scanBluetooth()
        default:
            break
        }
    }
    
    func scanBluetooth() {
        
        let heartRateServiceCBUUID = CBUUID(string: "0x180D")
        
        self.centralManager.scanForPeripherals(withServices: nil)
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        
        print(peripheral)
        
//        print("Peripheral name: \(String(describing: peripheral.name)) RSSI: \(String(RSSI.doubleValue))")
//
//        self.peripheral = peripheral
//        let localName: String
//
//        if advertisementData[CBAdvertisementDataLocalNameKey] != nil {
//
//            localName = advertisementData[CBAdvertisementDataLocalNameKey] as! String
//            print("Local name: \(localName)")
//
//        }
        
    }
    
}
