from driverConstants import *
from driverStandard import StandardAnalysis
import driverUtils, sys
options = {
    'SIMExt':'.sim',
    'ams':OFF,
    'analysisType':STANDARD,
    'applicationName':'continue',
    'aqua':OFF,
    'beamSectGen':OFF,
    'biorid':OFF,
    'cavityTypes':[],
    'cavitydefinition':OFF,
    'cavparallel':OFF,
    'complexFrequency':OFF,
    'contact':OFF,
    'continue':1,
    'cosimulation':OFF,
    'coupledProcedure':OFF,
    'cse':OFF,
    'cyclicSymmetryModel':OFF,
    'directCyclic':OFF,
    'direct_solver':DMP,
    'dsa':OFF,
    'dynamic':OFF,
    'filPrt':['H-2massdiff'],
    'fils':[],
    'finitesliding':OFF,
    'foundation':OFF,
    'geostatic':OFF,
    'geotech':OFF,
    'heatTransfer':OFF,
    'hysteresis':OFF,
    'impJobExpVars':{},
    'importJobList':[],
    'importer':OFF,
    'importerParts':OFF,
    'includes':['_geometry.inp', '_solid.inp', '_cohes.inp', '_equation.inp', '_AISI.inp', '_coh-H.inp'],
    'initialConditionsFile':ON,
    'input':'H-3cohesive',
    'inputFormat':INP,
    'job':'H-3cohesive',
    'keyword_licenses':[],
    'lanczos':OFF,
    'libs':[],
    'magnetostatic':OFF,
    'massDiffusion':OFF,
    'modifiedTet':OFF,
    'moldflowFiles':[],
    'moldflowMaterial':OFF,
    'mp_mode':THREADS,
    'mp_mode_requested':MPI,
    'multiphysics':OFF,
    'noDmpDirect':[],
    'noMultiHost':[],
    'noMultiHostElemLoop':[],
    'no_domain_check':1,
    'outputKeywords':ON,
    'parameterized':OFF,
    'partsAndAssemblies':OFF,
    'parval':OFF,
    'postOutput':OFF,
    'preDecomposition':ON,
    'restart':OFF,
    'restartEndStep':OFF,
    'restartIncrement':0,
    'restartStep':0,
    'restartWrite':OFF,
    'rezone':OFF,
    'rigidbody':OFF,
    'runCalculator':OFF,
    'soils':OFF,
    'soliter':OFF,
    'solverTypes':['DIRECT'],
    'standard_parallel':ALL,
    'staticNonlinear':ON,
    'steadyStateTransport':OFF,
    'step':ON,
    'subGen':OFF,
    'subGenLibs':[],
    'subGenTypes':[],
    'submodel':OFF,
    'substrLibDefs':OFF,
    'substructure':OFF,
    'symmetricModelGeneration':OFF,
    'thermal':OFF,
    'tmpdir':'C:\\Users\\ehsanie1\\AppData\\Local\\Temp',
    'tracer':OFF,
    'unsymm':OFF,
    'user':'conc.f',
    'visco':OFF,
    'xplSelect':OFF,
}
analysis = StandardAnalysis(options)
status = analysis.run()
sys.exit(status)
