#Create new table for our vehicle data

DROP TABLE IF EXISTS VehicleData;
CREATE TABLE VehicleData (
  Manufacturer VARCHAR(255) NULL,
  ModelYear VARCHAR(4) NULL,
  RegulatoryClass VARCHAR(50) NULL,
  VehicleType VARCHAR(50) NULL,
  Production DECIMAL(8,3) NULL,
  ProductionShare DECIMAL(8,5) NULL,
  TwoCycleMPG DECIMAL(8,5) NULL,
  RealWorldMPG DECIMAL(8,5) NULL,
  RealWorldMPG_City DECIMAL(8,5) NULL,
  RealWorldMPG_Hwy DECIMAL(8,5) NULL,
  RealWorldCO2 DECIMAL(8,5) NULL,
  RealWorldCO2_City DECIMAL(8,5) NULL,
  RealWorldCO2_Hwy DECIMAL(8,5) NULL,
  Weight DECIMAL(8,3) NULL,
  Footprint DECIMAL(8,5) NULL,
  EngineDisplacement DECIMAL(8,5) NULL,
  Horsepower DECIMAL(8,5) NULL,
  Acceleration DECIMAL(8,5) NULL,
  HPPerEngineDisplacement DECIMAL(8,5) NULL,
  HPPerWeight DECIMAL(8,5) NULL,
  TonMPGRealWorld DECIMAL(8,5) NULL,
  DrivetrainFront DECIMAL(8,5) NULL,
  Drivetrain4WD DECIMAL(8,5) NULL,
  DrivetrainRear DECIMAL(8,5) NULL,
  TransmissionManual DECIMAL(8,5) NULL,
  TransmissionAutomatic DECIMAL(8,5) NULL,
  TransmissionLockup DECIMAL(8,5) NULL,
  TransmissionCVTHybrid DECIMAL(8,5) NULL,
  TransmissionOther DECIMAL(8,5) NULL,
  FuelDeliveryCarbureted DECIMAL(8,5) NULL,
  FuelDeliveryGDI DECIMAL(8,5) NULL,
  FuelDeliveryPortFuelInjection DECIMAL(8,5) NULL,
  FuelDeliveryThrottleBodyInjection DECIMAL(8,5) NULL,
  FuelDeliveryOther DECIMAL(8,5) NULL,
  PowertrainDiesel DECIMAL(8,5) NULL,
  PowertrainEV DECIMAL(8,5) NULL,
  PowertrainPHEV DECIMAL(8,5) NULL,
  PowertrainFCV DECIMAL(8,5) NULL,
  PowertrainOther DECIMAL(8,5) NULL,
  PowertrainGasolineHybrid DECIMAL(8,5) NULL,
  PowertrainGasoline DECIMAL(8,5) NULL,
  TurbochargedEngine DECIMAL(8,5) NULL,
  StopStart DECIMAL(8,5) NULL,
  CylinderDeactivation DECIMAL(8,5) NULL,
  MultivalveEngine DECIMAL(8,5) NULL,
  VariableValveTiming DECIMAL(8,5) NULL,
  AverageNumberOfGears DECIMAL(8,5) NULL,
  TransmissionCVTNonHybrid DECIMAL(8,5) NULL,
  FourOrFewerGears DECIMAL(8,5) NULL,
  FiveGears DECIMAL(8,5) NULL,
  SixGears DECIMAL(8,5) NULL,
  SevenGears DECIMAL(8,5) NULL,
  EightGears DECIMAL(8,5) NULL,
  NineOrMoreGears DECIMAL(8,5) NULL
);

#load dataset and for any '-' values, to replace them with Null.
LOAD DATA INFILE '/ProgramData/MySQL/MySQL Server 5.7/Uploads/VehicleData.csv'
INTO TABLE VehicleData
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Manufacturer, ModelYear, RegulatoryClass, VehicleType, Production, ProductionShare, TwoCycleMPG, RealWorldMPG, RealWorldMPG_City, RealWorldMPG_Hwy, RealWorldCO2, RealWorldCO2_City, RealWorldCO2_Hwy, Weight, Footprint, EngineDisplacement, Horsepower, Acceleration, HPPerEngineDisplacement, HPPerWeight, TonMPGRealWorld, DrivetrainFront, Drivetrain4WD, DrivetrainRear, TransmissionManual, TransmissionAutomatic, TransmissionLockup, TransmissionCVTHybrid, TransmissionOther, FuelDeliveryCarbureted, FuelDeliveryGDI, FuelDeliveryPortFuelInjection, FuelDeliveryThrottleBodyInjection, FuelDeliveryOther, PowertrainDiesel, PowertrainEV, PowertrainPHEV, PowertrainFCV, PowertrainOther, PowertrainGasolineHybrid, PowertrainGasoline, TurbochargedEngine, StopStart, CylinderDeactivation, MultivalveEngine, VariableValveTiming, AverageNumberOfGears, TransmissionCVTNonHybrid, FourOrFewerGears, FiveGears, SixGears, SevenGears, EightGears, NineOrMoreGears)
SET Manufacturer = CASE WHEN Manufacturer = '-' THEN NULL ELSE Manufacturer END,
    ModelYear = CASE WHEN ModelYear = '-' THEN NULL ELSE ModelYear END,
    RegulatoryClass = CASE WHEN RegulatoryClass = '-' THEN NULL ELSE RegulatoryClass END,
    VehicleType = CASE WHEN VehicleType = '-' THEN NULL ELSE VehicleType END,
    Production = CASE WHEN Production = '-' THEN NULL ELSE Production END,
    ProductionShare = CASE WHEN ProductionShare = '-' THEN NULL ELSE ProductionShare END,
    TwoCycleMPG = CASE WHEN TwoCycleMPG = '-' THEN NULL ELSE TwoCycleMPG END,
    RealWorldMPG = CASE WHEN RealWorldMPG = '-' THEN NULL ELSE RealWorldMPG END,
    RealWorldMPG_City = CASE WHEN RealWorldMPG_City = '-' THEN NULL ELSE RealWorldMPG_City END,
    RealWorldMPG_Hwy = CASE WHEN RealWorldMPG_Hwy = '-' THEN NULL ELSE RealWorldMPG_Hwy END,
    RealWorldCO2 = CASE WHEN RealWorldCO2 = '-' THEN NULL ELSE RealWorldCO2 END,
    RealWorldCO2_City = CASE WHEN RealWorldCO2_City = '-' THEN NULL ELSE RealWorldCO2_City END,
    RealWorldCO2_Hwy = CASE WHEN RealWorldCO2_Hwy = '-' THEN NULL ELSE RealWorldCO2_Hwy END,
    Weight = CASE WHEN Weight = '-' THEN NULL ELSE Weight END,
    Footprint = CASE WHEN Footprint = '-' THEN NULL ELSE Footprint END,
    EngineDisplacement = CASE WHEN EngineDisplacement = '-' THEN NULL ELSE EngineDisplacement END,
    Horsepower = CASE WHEN Horsepower = '-' THEN NULL ELSE Horsepower END,
    Acceleration = CASE WHEN Acceleration = '-' THEN NULL ELSE Acceleration END,
    HPPerEngineDisplacement = CASE WHEN HPPerEngineDisplacement = '-' THEN NULL ELSE HPPerEngineDisplacement END,
    HPPerWeight = CASE WHEN HPPerWeight = '-' THEN NULL ELSE HPPerWeight END,
    TonMPGRealWorld = CASE WHEN TonMPGRealWorld = '-' THEN NULL ELSE TonMPGRealWorld END,
    DrivetrainFront = CASE WHEN DrivetrainFront = '-' THEN NULL ELSE DrivetrainFront END,
    Drivetrain4WD = CASE WHEN Drivetrain4WD = '-' THEN NULL ELSE Drivetrain4WD END,
    DrivetrainRear = CASE WHEN DrivetrainRear = '-' THEN NULL ELSE DrivetrainRear END,
    TransmissionManual = CASE WHEN TransmissionManual = '-' THEN NULL ELSE TransmissionManual END,
    TransmissionAutomatic = CASE WHEN TransmissionAutomatic = '-' THEN NULL ELSE TransmissionAutomatic END,
    TransmissionLockup = CASE WHEN TransmissionLockup = '-' THEN NULL ELSE TransmissionLockup END,
    TransmissionCVTHybrid = CASE WHEN TransmissionCVTHybrid = '-' THEN NULL ELSE TransmissionCVTHybrid END,
    TransmissionOther = CASE WHEN TransmissionOther = '-' THEN NULL ELSE TransmissionOther END,
    FuelDeliveryCarbureted = CASE WHEN FuelDeliveryCarbureted = '-' THEN NULL ELSE FuelDeliveryCarbureted END,
    FuelDeliveryGDI = CASE WHEN FuelDeliveryGDI = '-' THEN NULL ELSE FuelDeliveryGDI END,
    FuelDeliveryPortFuelInjection = CASE WHEN FuelDeliveryPortFuelInjection = '-' THEN NULL ELSE FuelDeliveryPortFuelInjection END,
    FuelDeliveryThrottleBodyInjection = CASE WHEN FuelDeliveryThrottleBodyInjection = '-' THEN NULL ELSE FuelDeliveryThrottleBodyInjection END,
    FuelDeliveryOther = CASE WHEN FuelDeliveryOther = '-' THEN NULL ELSE FuelDeliveryOther END,
    PowertrainDiesel = CASE WHEN PowertrainDiesel = '-' THEN NULL ELSE PowertrainDiesel END,
    PowertrainEV = CASE WHEN PowertrainEV = '-' THEN NULL ELSE PowertrainEV END,
    PowertrainPHEV = CASE WHEN PowertrainPHEV = '-' THEN NULL ELSE PowertrainPHEV END,
    PowertrainFCV = CASE WHEN PowertrainFCV = '-' THEN NULL ELSE PowertrainFCV END,
    PowertrainOther = CASE WHEN PowertrainOther = '-' THEN NULL ELSE PowertrainOther END,
    PowertrainGasolineHybrid = CASE WHEN PowertrainGasolineHybrid = '-' THEN NULL ELSE PowertrainGasolineHybrid END,
    PowertrainGasoline = CASE WHEN PowertrainGasoline = '-' THEN NULL ELSE PowertrainGasoline END,
    TurbochargedEngine = CASE WHEN TurbochargedEngine = '-' THEN NULL ELSE TurbochargedEngine END,
    StopStart = CASE WHEN StopStart = '-' THEN NULL ELSE StopStart END,
    CylinderDeactivation = CASE WHEN CylinderDeactivation = '-' THEN NULL ELSE CylinderDeactivation END,
    MultivalveEngine = CASE WHEN MultivalveEngine = '-' THEN NULL ELSE MultivalveEngine END,
    VariableValveTiming = CASE WHEN VariableValveTiming = '-' THEN NULL ELSE VariableValveTiming END,
    AverageNumberOfGears = CASE WHEN AverageNumberOfGears = '-' THEN NULL ELSE AverageNumberOfGears END,
    TransmissionCVTNonHybrid = CASE WHEN TransmissionCVTNonHybrid = '-' THEN NULL ELSE TransmissionCVTNonHybrid END,
    FourOrFewerGears = CASE WHEN FourOrFewerGears = '-' THEN NULL ELSE FourOrFewerGears END,
    FiveGears = CASE WHEN FiveGears = '-' THEN NULL ELSE FiveGears END,
    SixGears = CASE WHEN SixGears = '-' THEN NULL ELSE SixGears END,
    SevenGears = CASE WHEN SevenGears = '-' THEN NULL ELSE SevenGears END,
    EightGears = CASE WHEN EightGears = '-' THEN NULL ELSE EightGears END,
    NineOrMoreGears = CASE WHEN NineOrMoreGears = '-' THEN NULL ELSE NineOrMoreGears END;

