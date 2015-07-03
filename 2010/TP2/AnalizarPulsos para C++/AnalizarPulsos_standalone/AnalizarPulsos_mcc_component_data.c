/*
 * MATLAB Compiler: 4.13 (R2010a)
 * Date: Fri Apr 09 21:23:06 2010
 * Arguments: "-B" "macro_default" "-m" "-W" "main" "-T" "link:exe" "-I"
 * "C:\Users\Bob\Documents\MATLAB" "-d" "C:\Users\Bob\Documents\MATLAB"
 * "AnalizarPulsos" 
 */

#include "mclmcrrt.h"

#ifdef __cplusplus
extern "C" {
#endif
const unsigned char __MCC_AnalizarPulsos_session_key[] = {
    '4', '9', 'E', 'E', 'C', 'E', '7', 'B', 'C', '3', 'E', '3', 'D', '9', '1',
    'E', '6', '6', '6', 'B', '8', '6', '5', '8', '6', 'A', '1', 'E', '7', 'A',
    'E', '3', 'F', '7', '0', '0', '1', 'E', '8', '9', '0', '5', '1', '4', '3',
    '0', '7', 'F', 'C', '2', '7', 'F', 'C', 'F', 'F', '2', '4', '5', 'E', '4',
    '6', '6', 'B', '0', 'B', 'C', 'B', '1', '9', '8', 'D', '0', 'E', 'C', '2',
    '8', '0', 'E', 'E', '6', '2', 'D', '4', '9', '1', '7', 'A', '3', '5', '9',
    'B', '7', 'C', '3', 'A', 'E', 'F', '8', '8', '9', 'F', '3', '5', '5', 'F',
    '1', '6', 'D', '3', 'B', '2', '1', '3', '6', '0', '3', 'E', 'F', '4', 'F',
    '5', 'A', '9', '5', 'E', '6', '2', '0', '9', '0', '4', 'C', 'F', '8', '2',
    '1', '8', '5', 'F', '5', '7', '8', '3', 'D', '7', '6', '4', '5', '1', 'C',
    '0', 'B', 'B', '6', '9', '5', '8', 'B', '2', '1', '1', 'E', '4', 'B', 'E',
    'E', '8', '1', 'F', '8', '2', '9', '7', '8', 'F', '3', '4', '2', 'C', '3',
    'B', '2', 'A', 'D', 'E', '9', 'F', '6', '0', '8', '6', '1', 'C', '1', '1',
    'B', '0', 'D', '4', 'B', '5', 'C', '2', '7', '5', '6', '4', 'E', '2', 'F',
    'A', '4', 'B', '2', '7', '7', '6', 'C', '4', 'B', '4', 'A', '5', '1', '0',
    '8', '9', 'C', 'D', '3', 'E', 'B', '0', 'C', 'C', 'D', '8', 'D', '2', 'C',
    'D', 'F', 'E', 'E', 'F', '7', '4', '1', '8', '7', 'B', 'F', '0', '7', 'E',
    '0', '\0'};

const unsigned char __MCC_AnalizarPulsos_public_key[] = {
    '3', '0', '8', '1', '9', 'D', '3', '0', '0', 'D', '0', '6', '0', '9', '2',
    'A', '8', '6', '4', '8', '8', '6', 'F', '7', '0', 'D', '0', '1', '0', '1',
    '0', '1', '0', '5', '0', '0', '0', '3', '8', '1', '8', 'B', '0', '0', '3',
    '0', '8', '1', '8', '7', '0', '2', '8', '1', '8', '1', '0', '0', 'C', '4',
    '9', 'C', 'A', 'C', '3', '4', 'E', 'D', '1', '3', 'A', '5', '2', '0', '6',
    '5', '8', 'F', '6', 'F', '8', 'E', '0', '1', '3', '8', 'C', '4', '3', '1',
    '5', 'B', '4', '3', '1', '5', '2', '7', '7', 'E', 'D', '3', 'F', '7', 'D',
    'A', 'E', '5', '3', '0', '9', '9', 'D', 'B', '0', '8', 'E', 'E', '5', '8',
    '9', 'F', '8', '0', '4', 'D', '4', 'B', '9', '8', '1', '3', '2', '6', 'A',
    '5', '2', 'C', 'C', 'E', '4', '3', '8', '2', 'E', '9', 'F', '2', 'B', '4',
    'D', '0', '8', '5', 'E', 'B', '9', '5', '0', 'C', '7', 'A', 'B', '1', '2',
    'E', 'D', 'E', '2', 'D', '4', '1', '2', '9', '7', '8', '2', '0', 'E', '6',
    '3', '7', '7', 'A', '5', 'F', 'E', 'B', '5', '6', '8', '9', 'D', '4', 'E',
    '6', '0', '3', '2', 'F', '6', '0', 'C', '4', '3', '0', '7', '4', 'A', '0',
    '4', 'C', '2', '6', 'A', 'B', '7', '2', 'F', '5', '4', 'B', '5', '1', 'B',
    'B', '4', '6', '0', '5', '7', '8', '7', '8', '5', 'B', '1', '9', '9', '0',
    '1', '4', '3', '1', '4', 'A', '6', '5', 'F', '0', '9', '0', 'B', '6', '1',
    'F', 'C', '2', '0', '1', '6', '9', '4', '5', '3', 'B', '5', '8', 'F', 'C',
    '8', 'B', 'A', '4', '3', 'E', '6', '7', '7', '6', 'E', 'B', '7', 'E', 'C',
    'D', '3', '1', '7', '8', 'B', '5', '6', 'A', 'B', '0', 'F', 'A', '0', '6',
    'D', 'D', '6', '4', '9', '6', '7', 'C', 'B', '1', '4', '9', 'E', '5', '0',
    '2', '0', '1', '1', '1', '\0'};

static const char * MCC_AnalizarPulsos_matlabpath_data[] = 
  { "AnalizarPuls/", "$TOOLBOXDEPLOYDIR/", "$TOOLBOXMATLABDIR/general/",
    "$TOOLBOXMATLABDIR/ops/", "$TOOLBOXMATLABDIR/lang/",
    "$TOOLBOXMATLABDIR/elmat/", "$TOOLBOXMATLABDIR/randfun/",
    "$TOOLBOXMATLABDIR/elfun/", "$TOOLBOXMATLABDIR/specfun/",
    "$TOOLBOXMATLABDIR/matfun/", "$TOOLBOXMATLABDIR/datafun/",
    "$TOOLBOXMATLABDIR/polyfun/", "$TOOLBOXMATLABDIR/funfun/",
    "$TOOLBOXMATLABDIR/sparfun/", "$TOOLBOXMATLABDIR/scribe/",
    "$TOOLBOXMATLABDIR/graph2d/", "$TOOLBOXMATLABDIR/graph3d/",
    "$TOOLBOXMATLABDIR/specgraph/", "$TOOLBOXMATLABDIR/graphics/",
    "$TOOLBOXMATLABDIR/uitools/", "$TOOLBOXMATLABDIR/strfun/",
    "$TOOLBOXMATLABDIR/imagesci/", "$TOOLBOXMATLABDIR/iofun/",
    "$TOOLBOXMATLABDIR/audiovideo/", "$TOOLBOXMATLABDIR/timefun/",
    "$TOOLBOXMATLABDIR/datatypes/", "$TOOLBOXMATLABDIR/verctrl/",
    "$TOOLBOXMATLABDIR/codetools/", "$TOOLBOXMATLABDIR/helptools/",
    "$TOOLBOXMATLABDIR/winfun/", "$TOOLBOXMATLABDIR/winfun/NET/",
    "$TOOLBOXMATLABDIR/demos/", "$TOOLBOXMATLABDIR/timeseries/",
    "$TOOLBOXMATLABDIR/hds/", "$TOOLBOXMATLABDIR/guide/",
    "$TOOLBOXMATLABDIR/plottools/", "toolbox/local/",
    "$TOOLBOXMATLABDIR/datamanager/", "toolbox/compiler/" };

static const char * MCC_AnalizarPulsos_classpath_data[] = 
  { "" };

static const char * MCC_AnalizarPulsos_libpath_data[] = 
  { "" };

static const char * MCC_AnalizarPulsos_app_opts_data[] = 
  { "" };

static const char * MCC_AnalizarPulsos_run_opts_data[] = 
  { "" };

static const char * MCC_AnalizarPulsos_warning_state_data[] = 
  { "off:MATLAB:dispatcher:nameConflict" };


mclComponentData __MCC_AnalizarPulsos_component_data = { 

  /* Public key data */
  __MCC_AnalizarPulsos_public_key,

  /* Component name */
  "AnalizarPulsos",

  /* Component Root */
  "",

  /* Application key data */
  __MCC_AnalizarPulsos_session_key,

  /* Component's MATLAB Path */
  MCC_AnalizarPulsos_matlabpath_data,

  /* Number of directories in the MATLAB Path */
  39,

  /* Component's Java class path */
  MCC_AnalizarPulsos_classpath_data,
  /* Number of directories in the Java class path */
  0,

  /* Component's load library path (for extra shared libraries) */
  MCC_AnalizarPulsos_libpath_data,
  /* Number of directories in the load library path */
  0,

  /* MCR instance-specific runtime options */
  MCC_AnalizarPulsos_app_opts_data,
  /* Number of MCR instance-specific runtime options */
  0,

  /* MCR global runtime options */
  MCC_AnalizarPulsos_run_opts_data,
  /* Number of MCR global runtime options */
  0,
  
  /* Component preferences directory */
  "AnalizarPuls_B4B6D86E5F114A96E1E24B7C2B149E32",

  /* MCR warning status data */
  MCC_AnalizarPulsos_warning_state_data,
  /* Number of MCR warning status modifiers */
  1,

  /* Path to component - evaluated at runtime */
  NULL

};

#ifdef __cplusplus
}
#endif


