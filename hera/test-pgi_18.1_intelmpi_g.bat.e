Export PGI_CURR_CUDA_HOME=/apps/pgi/linux86-64/2018/cuda/9.1
Export PGI=/apps/pgi
pgf90-Warning-No files to process

Export PGI_CURR_CUDA_HOME=/apps/pgi/linux86-64/2018/cuda/9.1
Export PGI=/apps/pgi
pgc++-Warning-No files to process

sed: can't read /scratch1/NCEPDEV/da/Mark.Potts/esmf-test/pgi_18.1_intelmpi_g/test/testg/Linux.pgi.64.intelmpi.default/unit_tests.config: No such file or directory
"ESMC_VMUTest.C", line 48: warning: variable "vmCurrent" was set but never used
    ESMC_VM vmCurrent;
            ^

"ESMC_ClockUTest.C", line 51: warning: variable "runDuration" was declared but
          never referenced
    ESMC_TimeInterval timeStep,runDuration;
                               ^

"ESMC_ClockUTest.C", line 52: warning: variable "refTime" was declared but
          never referenced
    ESMC_Time startTime, stopTime, refTime; 
                                   ^

"ESMC_ClockUTest.C", line 61: warning: variable "advanceCount1" was declared
          but never referenced
    ESMC_I8 advanceCount, advanceCount1;
                          ^

"ESMC_ClockUTest.C", line 62: warning: variable "initSec" was declared but
          never referenced
    ESMC_I8 initSec, currSec1;
            ^

"ESMC_ClockUTest.C", line 62: warning: variable "currSec1" was declared but
          never referenced
    ESMC_I8 initSec, currSec1;
                     ^

"ESMC_ClockUTest.C", line 63: warning: variable "initHour" was declared but
          never referenced
    ESMC_R8 initHour, currHour1;
            ^

"ESMC_ClockUTest.C", line 63: warning: variable "currHour1" was declared but
          never referenced
    ESMC_R8 initHour, currHour1;
                      ^

"ESMC_TimeIntervalUTest.C", line 40: warning: variable "h_I4" was declared but
          never referenced
    ESMC_I4 h_I4;
            ^

"ESMC_TimeIntervalUTest.C", line 43: warning: variable "s1_I8" was declared but
          never referenced
    ESMC_I8 s1_I8=0;
            ^

"ESMC_TimeIntervalUTest.C", line 45: warning: variable "hl_R8" was declared but
          never referenced
    ESMC_R8 hl_R8=0;
            ^

"ESMC_ConfigUTest.C", line 32: warning: variable "cf1" was declared but never
          referenced
    ESMC_Config cf, cf1, cfs;              // ESMC_Config objects
                    ^

"ESMC_ConfigUTest.C", line 32: warning: variable "cfs" was declared but never
          referenced
    ESMC_Config cf, cf1, cfs;              // ESMC_Config objects
                         ^

"ESMC_ConfigUTest.C", line 33: warning: variable "fileName" was declared but
          never referenced
    const char* fileName = "ESMF_Resource_File_Sample.rc";   // file name
                ^

"ESMC_ArraySpecUTest.C", line 41: warning: variable "localrc" was declared but
          never referenced
    int localrc;
        ^

"ESMCI_IO_PIOUTest.C", line 46: warning: variable "iotype" was set but never
          used
    int iotype;
        ^

"ESMCI_IO_PIOUTest.C", line 48: warning: variable "dims" was set but never used
    int dims[NDIMS];
        ^

"ESMCI_IO_PIOUTest.C", line 50: warning: variable "test_data" was set but never
          used
    double test_data[DIM_X], read_data[DIM_X];
           ^

"ESMCI_IO_PIOUTest.C", line 50: warning: variable "read_data" was set but never
          used
    double test_data[DIM_X], read_data[DIM_X];
                             ^

"ESMCI_IO_PIOUTest.C", line 51: warning: variable "dimid_x" was declared but
          never referenced
    int dimid_x;
        ^

"ESMCI_IO_PIOUTest.C", line 53: warning: variable "pioerr" was declared but
          never referenced
    int pioerr;
        ^

"ESMCI_IO_PIOUTest.C", line 55: warning: variable "pio_file1" was declared but
          never referenced
    pio_file_desc_t pio_file1[PIO_SIZE_FILE_DESC];
                    ^

"ESMCI_IO_PIOUTest.C", line 56: warning: variable "iodesc1" was declared but
          never referenced
    pio_io_desc_t iodesc1[PIO_SIZE_IO_DESC];
                  ^

"ESMCI_IO_PIOUTest.C", line 57: warning: variable "pio_vardesc1" was declared
          but never referenced
    pio_var_desc_t pio_vardesc1[PIO_SIZE_VAR_DESC];
                   ^

"ESMCI_IO_PIOUTest.C", line 58: warning: variable "compdof" was declared but
          never referenced
    pio_dof_t compdof[DIM_X];
              ^

"ESMCI_IO_PIOUTest.C", line 59: warning: variable "amode_in" was declared but
          never referenced
    int amode_in;
        ^

"ESMCI_IO_PIOUTest.C", line 61: warning: variable "answer" was declared but
          never referenced
    int answer;
        ^

"ESMCI_IO_PIOUTest.C", line 62: warning: variable "float_att_value" was
          declared but never referenced
    float float_att_value;
          ^

"ESMCI_IO_PIOUTest.C", line 63: warning: variable "fillvalue" was declared but
          never referenced
    double fillvalue;
           ^

"ESMCI_IO_PIOUTest.C", line 71: warning: variable "vmCurrent" was declared but
          never referenced
    ESMC_VM vmCurrent;
            ^

"ESMC_IO_InqUTest.C", line 44: warning: variable "correct" was declared but
          never referenced
    bool correct;
         ^

"ESMC_IO_InqUTest.C", line 46: warning: variable "grid_np" was declared but
          never referenced
    ESMC_Grid grid_np, grid_1p, grid_tripole, grid_from_file;
              ^

"ESMC_IO_InqUTest.C", line 46: warning: variable "grid_1p" was declared but
          never referenced
    ESMC_Grid grid_np, grid_1p, grid_tripole, grid_from_file;
                       ^

"ESMC_IO_InqUTest.C", line 46: warning: variable "grid_tripole" was declared
          but never referenced
    ESMC_Grid grid_np, grid_1p, grid_tripole, grid_from_file;
                                ^

"ESMC_IO_InqUTest.C", line 46: warning: variable "grid_from_file" was declared
          but never referenced
    ESMC_Grid grid_np, grid_1p, grid_tripole, grid_from_file;
                                              ^

"ESMC_IO_InqUTest.C", line 50: warning: variable "maxIndex" was declared but
          never referenced
    int *maxIndex;
         ^

"ESMC_IO_InqUTest.C", line 51: warning: variable "i_maxIndex" was declared but
          never referenced
    ESMC_InterArrayInt i_maxIndex;
                       ^

"ESMC_IO_InqUTest.C", line 52: warning: variable "p" was declared but never
          referenced
    int p;
        ^

"ESMC_IO_InqUTest.C", line 53: warning: variable "pass" was declared but never
          referenced
    bool pass;
         ^

"ESMC_IO_InqUTest.C", line 54: warning: variable "elbnd" was declared but never
          referenced
    int elbnd[dimcount],eubnd[dimcount];
        ^

"ESMC_IO_InqUTest.C", line 54: warning: variable "eubnd" was declared but never
          referenced
    int elbnd[dimcount],eubnd[dimcount];
                        ^

PGF90-W-0435-Array declared with zero size (ESMF_IOUTest.F90: 49)
PGF90-W-0435-Array declared with zero size (ESMF_IOUTest.F90: 52)
  0 inform,   2 warnings,   0 severes, 0 fatal for esmf_ioutest
"ESMC_GridUTest.C", line 39: warning: variable "correct" was declared but never
          referenced
    bool correct;
         ^

"ESMC_GridUTest.C", line 41: warning: variable "grid_np" was declared but never
          referenced
    ESMC_Grid grid_np, grid_1p, grid_1p_pdim1, grid_1p_pdim2, grid_tripole,
              ^

"ESMC_GridUTest.C", line 41: warning: variable "grid_1p" was set but never used
    ESMC_Grid grid_np, grid_1p, grid_1p_pdim1, grid_1p_pdim2, grid_tripole,
                       ^

"ESMC_GridUTest.C", line 41: warning: variable "grid_tripole" was declared but
          never referenced
    ESMC_Grid grid_np, grid_1p, grid_1p_pdim1, grid_1p_pdim2, grid_tripole,
                                                              ^

"ESMC_GridUTest.C", line 42: warning: variable "grid_from_file" was declared
          but never referenced
              grid_from_file, grid_cs;
              ^

"ESMC_GridUTest.C", line 47: warning: variable "i_pkf" was declared but never
          referenced
    ESMC_InterArrayInt i_maxIndex, i_pkf;
                                   ^

"ESMC_GridUTest.C", line 48: warning: variable "p" was declared but never
          referenced
    int p;
        ^

"ESMC_GridUTest.C", line 49: warning: variable "pass" was declared but never
          referenced
    bool pass;
         ^

"ESMC_GridUTest.C", line 50: warning: variable "elbnd" was declared but never
          referenced
    int elbnd[dimcount],eubnd[dimcount];
        ^

"ESMC_GridUTest.C", line 50: warning: variable "eubnd" was declared but never
          referenced
    int elbnd[dimcount],eubnd[dimcount];
                        ^

"ESMCI_IntegrateUTest.C", line 183: warning: variable "pass" was set but never
          used
    bool pass;
         ^

"ESMCI_IntegrateUTest.C", line 184: warning: variable "result" was declared but
          never referenced
    int result = 0;
        ^

"ESMC_MeshVTKUTest.C", line 53: warning: variable "nodeDistG" was declared but
          never referenced
    int *nodeDistG;
         ^

"ESMC_MeshVTKUTest.C", line 54: warning: variable "elemDistG" was declared but
          never referenced
    int *elemDistG;
         ^

"ESMC_MBMeshTestUtilMesh.C", line 75: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 146: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 214: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 292: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMBMesh.C", line 829: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1102: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1358: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1608: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1888: warning: variable "elemMask_s" was
          declared but never referenced
      int elemMask_s [] ={1,1,1,1,1,1,1,1,1,1};
          ^

"ESMC_MBMeshTestUtilPL.C", line 342: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 466: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 599: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 723: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMesh.C", line 75: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 146: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 214: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 292: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMBMesh.C", line 829: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1102: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1358: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1608: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1888: warning: variable "elemMask_s" was
          declared but never referenced
      int elemMask_s [] ={1,1,1,1,1,1,1,1,1,1};
          ^

"ESMC_MBMeshTestUtilPL.C", line 342: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 466: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 599: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 723: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMesh.C", line 75: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 146: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 214: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 292: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMBMesh.C", line 829: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1102: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1358: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1608: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1888: warning: variable "elemMask_s" was
          declared but never referenced
      int elemMask_s [] ={1,1,1,1,1,1,1,1,1,1};
          ^

"ESMC_MBMeshTestUtilPL.C", line 342: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 466: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 599: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 723: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMesh_BilinearSingleElemUTest.C", line 62: warning: white space between
          backslash and newline in line splice ignored
    //         /          \ 
                           ^

"ESMC_MBMesh_BilinearSingleElemUTest.C", line 166: warning: white space between
          backslash and newline in line splice ignored
    //         /          \ 
                           ^

"ESMC_MBMesh_BilinearSingleElemUTest.C", line 482: warning: variable "pi" was
          declared but never referenced
    double pi = 3.14159;
           ^

"ESMC_MBMesh_BilinearSingleElemUTest.C", line 597: warning: variable "cart" is
          used before its value is set
    mesh_pent_single = create_mesh_pent_single(rc, cart);
                                                   ^

"ESMC_MBMeshTestUtilMesh.C", line 75: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 146: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 214: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 292: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMBMesh.C", line 829: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1102: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1358: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1608: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1888: warning: variable "elemMask_s" was
          declared but never referenced
      int elemMask_s [] ={1,1,1,1,1,1,1,1,1,1};
          ^

"ESMC_MBMeshTestUtilPL.C", line 342: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 466: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 599: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 723: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMesh_BilinearEdgeCasesUTest.C", line 342: warning: variable "pi" was
          declared but never referenced
    double pi = 3.14159;
           ^

"ESMC_MBMeshTestUtilMesh.C", line 75: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 146: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 214: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMesh.C", line 292: warning: variable "nodeMask_s" was
          declared but never referenced
    int nodeMask_s [] ={1,1,1,1,1,1,1,1};
        ^

"ESMC_MBMeshTestUtilMBMesh.C", line 829: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1102: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1358: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1608: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1888: warning: variable "elemMask_s" was
          declared but never referenced
      int elemMask_s [] ={1,1,1,1,1,1,1,1,1,1};
          ^

"ESMC_MBMeshTestUtilPL.C", line 342: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 466: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 599: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 723: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMesh_BilinearEdgeCases3DUTest.C", line 250: warning: variable "pi" was
          declared but never referenced
    double pi = 3.14159;
           ^

"ESMC_MBMesh_BilinearEdgeCases3DUTest.C", line 432: warning: variable
          "collapsed" was declared but never referenced
    bool collapsed = false;
         ^

"ESMC_MBMeshTestUtilMBMesh.C", line 829: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1102: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1358: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1608: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1888: warning: variable "elemMask_s" was
          declared but never referenced
      int elemMask_s [] ={1,1,1,1,1,1,1,1,1,1};
          ^

"ESMC_MBMeshTestUtilMBMesh.C", line 829: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1102: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1358: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1608: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1888: warning: variable "elemMask_s" was
          declared but never referenced
      int elemMask_s [] ={1,1,1,1,1,1,1,1,1,1};
          ^

"ESMC_MBMeshTestUtilPL.C", line 342: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 466: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 599: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 723: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 829: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1102: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1358: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1608: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1888: warning: variable "elemMask_s" was
          declared but never referenced
      int elemMask_s [] ={1,1,1,1,1,1,1,1,1,1};
          ^

"ESMC_MBMeshTestUtilPL.C", line 342: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 466: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 599: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 723: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 829: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1102: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1358: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1608: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1888: warning: variable "elemMask_s" was
          declared but never referenced
      int elemMask_s [] ={1,1,1,1,1,1,1,1,1,1};
          ^

"ESMC_MBMeshTestUtilPL.C", line 342: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 466: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 599: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 723: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 829: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1102: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1358: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1608: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1888: warning: variable "elemMask_s" was
          declared but never referenced
      int elemMask_s [] ={1,1,1,1,1,1,1,1,1,1};
          ^

"ESMC_MBMeshTestUtilPL.C", line 342: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 466: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 599: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 723: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMesh_SearchUTest.C", line 134: warning: variable "name" was declared
          but never referenced
    char name[80];
         ^

"ESMC_MBMesh_SearchUTest.C", line 135: warning: variable "failMsg" was declared
          but never referenced
    char failMsg[80];
         ^

"ESMC_MBMesh_SearchUTest.C", line 136: warning: variable "result" was declared
          but never referenced
    int result = 0;
        ^

"ESMC_MBMeshTestUtilMBMesh.C", line 829: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1102: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1358: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1608: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1888: warning: variable "elemMask_s" was
          declared but never referenced
      int elemMask_s [] ={1,1,1,1,1,1,1,1,1,1};
          ^

"ESMC_MBMeshTestUtilMBMesh.C", line 829: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1102: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1358: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1608: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilMBMesh.C", line 1888: warning: variable "elemMask_s" was
          declared but never referenced
      int elemMask_s [] ={1,1,1,1,1,1,1,1,1,1};
          ^

"ESMC_MBMeshTestUtilPL.C", line 342: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 466: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 599: warning: statement is unreachable
      return NULL;
      ^

"ESMC_MBMeshTestUtilPL.C", line 723: warning: statement is unreachable
      return NULL;
      ^

"ESMC_XGridUTest.C", line 36: warning: variable "name" was declared but never
          referenced
    char name[80];
         ^

"ESMC_XGridUTest.C", line 37: warning: variable "failMsg" was declared but
          never referenced
    char failMsg[80];
         ^

"ESMC_XGridUTest.C", line 38: warning: variable "result" was declared but never
          referenced
    int result = 0;
        ^

"ESMC_XGridUTest.C", line 40: warning: variable "localrc" was declared but
          never referenced
    int localrc, rc;
        ^

"ESMC_XGridUTest.C", line 41: warning: variable "correct" was declared but
          never referenced
    bool correct;
         ^

"ESMC_XGridUTest.C", line 42: warning: variable "stagger" was declared but
          never referenced
    ESMC_StaggerLoc stagger = ESMC_STAGGERLOC_CORNER;
                    ^

"ESMC_XGridUTest.C", line 45: warning: variable "pass" was declared but never
          referenced
    bool pass;
         ^

"ESMC_XGridUTest.C", line 46: warning: variable "maxIndex" was declared but
          never referenced
    int maxIndex[2];
        ^

"ESMC_XGridUTest.C", line 47: warning: variable "minCoord" was declared but
          never referenced
    double minCoord[2];
           ^

"ESMC_XGridUTest.C", line 48: warning: variable "maxCoord" was declared but
          never referenced
    double maxCoord[2];
           ^

"ESMC_XGridUTest.C", line 51: warning: variable "side_a_grids" was declared but
          never referenced
    ESMC_Grid side_a_grids[NUM_SIDE_A_GRIDS];
              ^

"ESMC_XGridUTest.C", line 54: warning: variable "side_b_grids" was declared but
          never referenced
    ESMC_Grid side_b_grids[NUM_SIDE_B_GRIDS];
              ^

"ESMC_XGridUTest.C", line 56: warning: variable "xgrid" was declared but never
          referenced
    ESMC_XGrid xgrid;
               ^

"ESMC_XGridUTest.C", line 57: warning: variable "factorListCount" was declared
          but never referenced
    int factorListCount=0;
        ^

"ESMC_XGridUTest.C", line 58: warning: variable "factorList" was declared but
          never referenced
    double *factorList;
            ^

"ESMC_XGridUTest.C", line 59: warning: variable "factorIndexList" was declared
          but never referenced
    int *factorIndexList;
         ^

"ESMC_XGridUTest.C", line 604: warning: variable "outGrid" is used before its
          value is set
      return outGrid;
             ^

"ESMC_FieldUTest.C", line 39: warning: variable "arrayspec2" was declared but
          never referenced
    ESMC_ArraySpec arrayspec, arrayspec2;
                              ^

"ESMC_FieldUTest.C", line 48: warning: variable "mesh1" was set but never used
    ESMC_Mesh mesh, mesh1, mesh2;
                    ^

"ESMC_FieldUTest.C", line 48: warning: variable "mesh2" was set but never used
    ESMC_Mesh mesh, mesh1, mesh2;
                           ^

"ESMC_FieldUTest.C", line 49: warning: variable "array" was set but never used
    ESMC_Array array, array2;
               ^

"ESMC_FieldUTest.C", line 49: warning: variable "array2" was set but never used
    ESMC_Array array, array2;
                      ^

"ESMC_FieldUTest.C", line 66: warning: variable "keyArray" was declared but
          never referenced
    ESMC_Array keyArray;
               ^

"ESMC_FieldUTest.C", line 70: warning: variable "fieldls2" was declared but
          never referenced
    ESMC_Field fieldls1, fieldls2;
                         ^

"ESMC_FieldUTest.C", line 71: warning: variable "fieldls2ptr" was declared but
          never referenced
    double * fieldls1ptr, *fieldls2ptr;
                           ^

"ESMC_FieldUTest.C", line 73: warning: variable "correct" was declared but
          never referenced
    bool correct = false;
         ^

"ESMC_FieldRegridUTest.C", line 61: warning: variable "keyArray" was declared
          but never referenced
    ESMC_Array keyArray;
               ^

"ESMC_FieldRegridCsrvUTest.C", line 394: warning: variable "pass" was set but
          never used
    bool pass = true;
         ^

"ESMC_FieldGridRegridUTest.C", line 37: warning: variable "name" was declared
          but never referenced
    char name[80];
         ^

"ESMC_FieldGridRegridUTest.C", line 38: warning: variable "failMsg" was
          declared but never referenced
    char failMsg[80];
         ^

"ESMC_FieldGridRegridUTest.C", line 39: warning: variable "result" was declared
          but never referenced
    int result = 0;
        ^

"ESMC_FieldGridRegridUTest.C", line 47: warning: variable "routehandle" was
          declared but never referenced
    ESMC_RouteHandle routehandle;
                     ^

"ESMC_FieldGridRegridUTest.C", line 48: warning: variable "srcfield" was
          declared but never referenced
    ESMC_Field srcfield, dstfield;
               ^

"ESMC_FieldGridRegridUTest.C", line 48: warning: variable "dstfield" was
          declared but never referenced
    ESMC_Field srcfield, dstfield;
                         ^

"ESMC_FieldGridRegridUTest.C", line 51: warning: variable "srcgrid" was
          declared but never referenced
    ESMC_Grid srcgrid;
              ^

"ESMC_FieldGridRegridUTest.C", line 52: warning: variable "dimcount" was
          declared but never referenced
    int dimcount = 2;
        ^

"ESMC_FieldGridRegridUTest.C", line 53: warning: variable "maxIndex" was
          declared but never referenced
    int *maxIndex;
         ^

"ESMC_FieldGridRegridUTest.C", line 54: warning: variable "i_maxIndex" was
          declared but never referenced
    ESMC_InterArrayInt i_maxIndex;
                       ^

"ESMC_FieldGridRegridUTest.C", line 57: warning: variable "pdim" was declared
          but never referenced
    int pdim=2;
        ^

"ESMC_FieldGridRegridUTest.C", line 58: warning: variable "sdim" was declared
          but never referenced
    int sdim=2;
        ^

"ESMC_FieldGridRegridUTest.C", line 59: warning: variable "dstmesh" was
          declared but never referenced
    ESMC_Mesh dstmesh;
              ^

"ESMC_FieldGridRegridUTest.C", line 60: warning: variable "num_elem" was
          declared but never referenced
    int num_elem, num_node;
        ^

"ESMC_FieldGridRegridUTest.C", line 60: warning: variable "num_node" was
          declared but never referenced
    int num_elem, num_node;
                  ^

"ESMC_FieldGridRegridUTest.C", line 63: warning: variable "p" was declared but
          never referenced
    int p;
        ^

"ESMC_FieldGridRegridUTest.C", line 64: warning: variable "x" was declared but
          never referenced
    double x, y, exact, tol;
           ^

"ESMC_FieldGridRegridUTest.C", line 64: warning: variable "y" was declared but
          never referenced
    double x, y, exact, tol;
              ^

"ESMC_FieldGridRegridUTest.C", line 64: warning: variable "exact" was declared
          but never referenced
    double x, y, exact, tol;
                 ^

"ESMC_FieldGridRegridUTest.C", line 64: warning: variable "tol" was declared
          but never referenced
    double x, y, exact, tol;
                        ^

"ESMC_FieldGridRegrid2UTest.C", line 40: warning: variable "name" was declared
          but never referenced
    char name[80];
         ^

"ESMC_FieldGridRegrid2UTest.C", line 41: warning: variable "failMsg" was
          declared but never referenced
    char failMsg[80];
         ^

"ESMC_FieldGridRegrid2UTest.C", line 42: warning: variable "result" was
          declared but never referenced
    int result = 0;
        ^

"ESMC_FieldGridRegrid2UTest.C", line 50: warning: variable "routehandle" was
          declared but never referenced
    ESMC_RouteHandle routehandle;
                     ^

"ESMC_FieldGridRegrid2UTest.C", line 51: warning: variable "srcfield" was
          declared but never referenced
    ESMC_Field srcfield, dstfield;
               ^

"ESMC_FieldGridRegrid2UTest.C", line 51: warning: variable "dstfield" was
          declared but never referenced
    ESMC_Field srcfield, dstfield;
                         ^

"ESMC_FieldGridRegrid2UTest.C", line 54: warning: variable "grid" was declared
          but never referenced
    ESMC_Grid grid;
              ^

"ESMC_FieldGridRegrid2UTest.C", line 55: warning: variable "dimcount" was
          declared but never referenced
    int dimcount = 2;
        ^

"ESMC_FieldGridRegrid2UTest.C", line 56: warning: variable "maxIndex" was
          declared but never referenced
    int *maxIndex;
         ^

"ESMC_FieldGridRegrid2UTest.C", line 57: warning: variable "i_maxIndex" was
          declared but never referenced
    ESMC_InterArrayInt i_maxIndex;
                       ^

"ESMC_FieldGridRegrid2UTest.C", line 60: warning: variable "pdim" was declared
          but never referenced
    int pdim=2;
        ^

"ESMC_FieldGridRegrid2UTest.C", line 61: warning: variable "sdim" was declared
          but never referenced
    int sdim=2;
        ^

"ESMC_FieldGridRegrid2UTest.C", line 62: warning: variable "mesh" was declared
          but never referenced
    ESMC_Mesh mesh;
              ^

"ESMC_FieldGridRegrid2UTest.C", line 63: warning: variable "num_elem" was
          declared but never referenced
    int num_elem, num_node;
        ^

"ESMC_FieldGridRegrid2UTest.C", line 63: warning: variable "num_node" was
          declared but never referenced
    int num_elem, num_node;
                  ^

"ESMC_FieldGridRegrid2UTest.C", line 66: warning: variable "p" was declared but
          never referenced
    int p;
        ^

"ESMC_FieldGridRegrid2UTest.C", line 67: warning: variable "x" was declared but
          never referenced
    double x, y, exact, tol;
           ^

"ESMC_FieldGridRegrid2UTest.C", line 67: warning: variable "y" was declared but
          never referenced
    double x, y, exact, tol;
              ^

"ESMC_FieldGridRegrid2UTest.C", line 67: warning: variable "exact" was declared
          but never referenced
    double x, y, exact, tol;
                 ^

"ESMC_FieldGridRegrid2UTest.C", line 67: warning: variable "tol" was declared
          but never referenced
    double x, y, exact, tol;
                        ^

"ESMC_FieldGridRegridCsrvUTest.C", line 38: warning: variable "name" was
          declared but never referenced
    char name[80];
         ^

"ESMC_FieldGridRegridCsrvUTest.C", line 39: warning: variable "failMsg" was
          declared but never referenced
    char failMsg[80];
         ^

"ESMC_FieldGridRegridCsrvUTest.C", line 40: warning: variable "result" was
          declared but never referenced
    int result = 0;
        ^

"ESMC_FieldGridRegridCsrvUTest.C", line 48: warning: variable "routehandle" was
          declared but never referenced
    ESMC_RouteHandle routehandle;
                     ^

"ESMC_FieldGridRegridCsrvUTest.C", line 49: warning: variable "srcfield" was
          declared but never referenced
    ESMC_Field srcfield, dstfield, srcAreaField, dstAreaField, 
               ^

"ESMC_FieldGridRegridCsrvUTest.C", line 49: warning: variable "dstfield" was
          declared but never referenced
    ESMC_Field srcfield, dstfield, srcAreaField, dstAreaField, 
                         ^

"ESMC_FieldGridRegridCsrvUTest.C", line 49: warning: variable "srcAreaField"
          was declared but never referenced
    ESMC_Field srcfield, dstfield, srcAreaField, dstAreaField, 
                                   ^

"ESMC_FieldGridRegridCsrvUTest.C", line 49: warning: variable "dstAreaField"
          was declared but never referenced
    ESMC_Field srcfield, dstfield, srcAreaField, dstAreaField, 
                                                 ^

"ESMC_FieldGridRegridCsrvUTest.C", line 50: warning: variable "srcFracField"
          was declared but never referenced
               srcFracField, dstFracField;
               ^

"ESMC_FieldGridRegridCsrvUTest.C", line 50: warning: variable "dstFracField"
          was declared but never referenced
               srcFracField, dstFracField;
                             ^

"ESMC_FieldGridRegridCsrvUTest.C", line 53: warning: variable "srcgrid" was
          declared but never referenced
    ESMC_Grid srcgrid;
              ^

"ESMC_FieldGridRegridCsrvUTest.C", line 54: warning: variable "dimcount" was
          declared but never referenced
    int dimcount = 2;
        ^

"ESMC_FieldGridRegridCsrvUTest.C", line 55: warning: variable "maxIndex" was
          declared but never referenced
    int *maxIndex;
         ^

"ESMC_FieldGridRegridCsrvUTest.C", line 56: warning: variable "i_maxIndex" was
          declared but never referenced
    ESMC_InterArrayInt i_maxIndex;
                       ^

"ESMC_FieldGridRegridCsrvUTest.C", line 59: warning: variable "pdim" was
          declared but never referenced
    int pdim=2;
        ^

"ESMC_FieldGridRegridCsrvUTest.C", line 60: warning: variable "sdim" was
          declared but never referenced
    int sdim=2;
        ^

"ESMC_FieldGridRegridCsrvUTest.C", line 61: warning: variable "dstmesh" was
          declared but never referenced
    ESMC_Mesh dstmesh;
              ^

"ESMC_FieldGridRegridCsrvUTest.C", line 62: warning: variable "num_elem" was
          declared but never referenced
    int num_elem, num_node;
        ^

"ESMC_FieldGridRegridCsrvUTest.C", line 62: warning: variable "num_node" was
          declared but never referenced
    int num_elem, num_node;
                  ^

"ESMC_FieldGridRegridCsrvUTest.C", line 65: warning: variable "x" was declared
          but never referenced
    double x, y, exact, tol;
           ^

"ESMC_FieldGridRegridCsrvUTest.C", line 65: warning: variable "y" was declared
          but never referenced
    double x, y, exact, tol;
              ^

"ESMC_FieldGridRegridCsrvUTest.C", line 65: warning: variable "exact" was
          declared but never referenced
    double x, y, exact, tol;
                 ^

"ESMC_FieldGridRegridCsrvUTest.C", line 65: warning: variable "tol" was
          declared but never referenced
    double x, y, exact, tol;
                        ^

"ESMC_FieldGridRegridCsrvUTest.C", line 66: warning: variable "p" was declared
          but never referenced
    int p;
        ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 41: warning: variable "name" was
          declared but never referenced
    char name[80];
         ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 42: warning: variable "failMsg" was
          declared but never referenced
    char failMsg[80];
         ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 43: warning: variable "result" was
          declared but never referenced
    int result = 0;
        ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 51: warning: variable "routehandle"
          was declared but never referenced
    ESMC_RouteHandle routehandle;
                     ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 52: warning: variable "srcfield" was
          declared but never referenced
    ESMC_Field srcfield, dstfield, srcAreaField, dstAreaField, 
               ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 52: warning: variable "dstfield" was
          declared but never referenced
    ESMC_Field srcfield, dstfield, srcAreaField, dstAreaField, 
                         ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 52: warning: variable "srcAreaField"
          was declared but never referenced
    ESMC_Field srcfield, dstfield, srcAreaField, dstAreaField, 
                                   ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 52: warning: variable "dstAreaField"
          was declared but never referenced
    ESMC_Field srcfield, dstfield, srcAreaField, dstAreaField, 
                                                 ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 53: warning: variable "srcFracField"
          was declared but never referenced
               srcFracField, dstFracField;
               ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 53: warning: variable "dstFracField"
          was declared but never referenced
               srcFracField, dstFracField;
                             ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 56: warning: variable "grid" was
          declared but never referenced
    ESMC_Grid grid;
              ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 57: warning: variable "dimcount" was
          declared but never referenced
    int dimcount = 2;
        ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 58: warning: variable "maxIndex" was
          declared but never referenced
    int *maxIndex;
         ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 59: warning: variable "i_maxIndex" was
          declared but never referenced
    ESMC_InterArrayInt i_maxIndex;
                       ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 62: warning: variable "pdim" was
          declared but never referenced
    int pdim=2;
        ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 63: warning: variable "sdim" was
          declared but never referenced
    int sdim=2;
        ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 64: warning: variable "mesh" was
          declared but never referenced
    ESMC_Mesh mesh;
              ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 65: warning: variable "num_elem" was
          declared but never referenced
    int num_elem, num_node;
        ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 65: warning: variable "num_node" was
          declared but never referenced
    int num_elem, num_node;
                  ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 68: warning: variable "x" was declared
          but never referenced
    double x, y, exact, tol;
           ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 68: warning: variable "y" was declared
          but never referenced
    double x, y, exact, tol;
              ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 68: warning: variable "exact" was
          declared but never referenced
    double x, y, exact, tol;
                 ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 68: warning: variable "tol" was
          declared but never referenced
    double x, y, exact, tol;
                        ^

"ESMC_FieldGridRegridCsrv2UTest.C", line 69: warning: variable "p" was declared
          but never referenced
    int p;
        ^

"ESMC_FieldGridRegridParUTest.C", line 37: warning: variable "name" was
          declared but never referenced
    char name[80];
         ^

"ESMC_FieldGridRegridParUTest.C", line 38: warning: variable "failMsg" was
          declared but never referenced
    char failMsg[80];
         ^

"ESMC_FieldGridRegridParUTest.C", line 39: warning: variable "result" was
          declared but never referenced
    int result = 0;
        ^

"ESMC_FieldGridRegridParUTest.C", line 46: warning: variable "arrayspec" was
          declared but never referenced
    ESMC_ArraySpec arrayspec;
                   ^

"ESMC_FieldGridRegridParUTest.C", line 47: warning: variable "routehandle" was
          declared but never referenced
    ESMC_RouteHandle routehandle;
                     ^

"ESMC_FieldGridRegridParUTest.C", line 48: warning: variable "srcfield" was
          declared but never referenced
    ESMC_Field srcfield, dstfield, exactfield;
               ^

"ESMC_FieldGridRegridParUTest.C", line 48: warning: variable "dstfield" was
          declared but never referenced
    ESMC_Field srcfield, dstfield, exactfield;
                         ^

"ESMC_FieldGridRegridParUTest.C", line 48: warning: variable "exactfield" was
          declared but never referenced
    ESMC_Field srcfield, dstfield, exactfield;
                                   ^

"ESMC_FieldGridRegridParUTest.C", line 51: warning: variable "srcgrid" was
          declared but never referenced
    ESMC_Grid srcgrid;
              ^

"ESMC_FieldGridRegridParUTest.C", line 52: warning: variable "dimcount" was
          declared but never referenced
    int dimcount = 2;
        ^

"ESMC_FieldGridRegridParUTest.C", line 53: warning: variable "maxIndex" was
          declared but never referenced
    int *maxIndex;
         ^

"ESMC_FieldGridRegridParUTest.C", line 54: warning: variable "i_maxIndex" was
          declared but never referenced
    ESMC_InterArrayInt i_maxIndex;
                       ^

"ESMC_FieldGridRegridParUTest.C", line 57: warning: variable "pdim" was
          declared but never referenced
    int pdim=2;
        ^

"ESMC_FieldGridRegridParUTest.C", line 58: warning: variable "sdim" was
          declared but never referenced
    int sdim=2;
        ^

"ESMC_FieldGridRegridParUTest.C", line 59: warning: variable "dstmesh" was
          declared but never referenced
    ESMC_Mesh dstmesh;
              ^

"ESMC_FieldGridRegridParUTest.C", line 60: warning: variable "num_elem" was
          declared but never referenced
    int num_elem, num_node;
        ^

"ESMC_FieldGridRegridParUTest.C", line 60: warning: variable "num_node" was
          declared but never referenced
    int num_elem, num_node;
                  ^

"ESMC_FieldGridRegridParUTest.C", line 64: warning: variable "p" was declared
          but never referenced
    int p;
        ^

"ESMC_FieldGridRegridParUTest.C", line 65: warning: variable "x" was declared
          but never referenced
    double x, y, exact, tol;
           ^

"ESMC_FieldGridRegridParUTest.C", line 65: warning: variable "y" was declared
          but never referenced
    double x, y, exact, tol;
              ^

"ESMC_FieldGridRegridParUTest.C", line 65: warning: variable "exact" was
          declared but never referenced
    double x, y, exact, tol;
                 ^

"ESMC_FieldGridRegridParUTest.C", line 65: warning: variable "tol" was declared
          but never referenced
    double x, y, exact, tol;
                        ^

"ESMC_FieldGridGridRegridUTest.C", line 37: warning: variable "name" was
          declared but never referenced
    char name[80];
         ^

"ESMC_FieldGridGridRegridUTest.C", line 38: warning: variable "failMsg" was
          declared but never referenced
    char failMsg[80];
         ^

"ESMC_FieldGridGridRegridUTest.C", line 39: warning: variable "result" was
          declared but never referenced
    int result = 0;
        ^

"ESMC_FieldGridGridRegridUTest.C", line 47: warning: variable "routehandle" was
          declared but never referenced
    ESMC_RouteHandle routehandle;
                     ^

"ESMC_FieldGridGridRegridUTest.C", line 48: warning: variable "srcfield" was
          declared but never referenced
    ESMC_Field srcfield, dstfield;
               ^

"ESMC_FieldGridGridRegridUTest.C", line 48: warning: variable "dstfield" was
          declared but never referenced
    ESMC_Field srcfield, dstfield;
                         ^

"ESMC_FieldGridGridRegridUTest.C", line 51: warning: variable "srcgrid" was
          declared but never referenced
    ESMC_Grid srcgrid, dstgrid;
              ^

"ESMC_FieldGridGridRegridUTest.C", line 51: warning: variable "dstgrid" was
          declared but never referenced
    ESMC_Grid srcgrid, dstgrid;
                       ^

"ESMC_FieldGridGridRegridUTest.C", line 52: warning: variable "dimcount" was
          declared but never referenced
    int dimcount = 2;
        ^

"ESMC_FieldGridGridRegridUTest.C", line 53: warning: variable "maxIndex" was
          declared but never referenced
    int *maxIndex, *maxIndex_d;
         ^

"ESMC_FieldGridGridRegridUTest.C", line 53: warning: variable "maxIndex_d" was
          declared but never referenced
    int *maxIndex, *maxIndex_d;
                    ^

"ESMC_FieldGridGridRegridUTest.C", line 54: warning: variable "i_maxIndex" was
          declared but never referenced
    ESMC_InterArrayInt i_maxIndex, i_maxIndex_d;
                       ^

"ESMC_FieldGridGridRegridUTest.C", line 54: warning: variable "i_maxIndex_d"
          was declared but never referenced
    ESMC_InterArrayInt i_maxIndex, i_maxIndex_d;
                                   ^

"ESMC_FieldGridGridRegridUTest.C", line 57: warning: variable "p" was declared
          but never referenced
    int p;
        ^

"ESMC_FieldGridGridRegridUTest.C", line 58: warning: variable "x" was declared
          but never referenced
    double x, y, exact, tol;
           ^

"ESMC_FieldGridGridRegridUTest.C", line 58: warning: variable "y" was declared
          but never referenced
    double x, y, exact, tol;
              ^

"ESMC_FieldGridGridRegridUTest.C", line 58: warning: variable "exact" was
          declared but never referenced
    double x, y, exact, tol;
                 ^

"ESMC_FieldGridGridRegridUTest.C", line 58: warning: variable "tol" was
          declared but never referenced
    double x, y, exact, tol;
                        ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 37: warning: variable "name" was
          declared but never referenced
    char name[80];
         ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 38: warning: variable "failMsg" was
          declared but never referenced
    char failMsg[80];
         ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 39: warning: variable "result" was
          declared but never referenced
    int result = 0;
        ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 47: warning: variable "routehandle"
          was declared but never referenced
    ESMC_RouteHandle routehandle;
                     ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 48: warning: variable "srcfield"
          was declared but never referenced
    ESMC_Field srcfield, dstfield, srcAreaField, dstAreaField, 
               ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 48: warning: variable "dstfield"
          was declared but never referenced
    ESMC_Field srcfield, dstfield, srcAreaField, dstAreaField, 
                         ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 48: warning: variable
          "srcAreaField" was declared but never referenced
    ESMC_Field srcfield, dstfield, srcAreaField, dstAreaField, 
                                   ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 48: warning: variable
          "dstAreaField" was declared but never referenced
    ESMC_Field srcfield, dstfield, srcAreaField, dstAreaField, 
                                                 ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 49: warning: variable
          "srcFracField" was declared but never referenced
               srcFracField, dstFracField;
               ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 49: warning: variable
          "dstFracField" was declared but never referenced
               srcFracField, dstFracField;
                             ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 52: warning: variable "srcgrid" was
          declared but never referenced
    ESMC_Grid srcgrid, dstgrid;
              ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 52: warning: variable "dstgrid" was
          declared but never referenced
    ESMC_Grid srcgrid, dstgrid;
                       ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 53: warning: variable "dimcount"
          was declared but never referenced
    int dimcount = 2;
        ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 54: warning: variable "maxIndex"
          was declared but never referenced
    int *maxIndex, *maxIndex_d;
         ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 54: warning: variable "maxIndex_d"
          was declared but never referenced
    int *maxIndex, *maxIndex_d;
                    ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 55: warning: variable "i_maxIndex"
          was declared but never referenced
    ESMC_InterArrayInt i_maxIndex, i_maxIndex_d;
                       ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 55: warning: variable
          "i_maxIndex_d" was declared but never referenced
    ESMC_InterArrayInt i_maxIndex, i_maxIndex_d;
                                   ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 58: warning: variable "p" was
          declared but never referenced
    int p;
        ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 59: warning: variable "x" was
          declared but never referenced
    double x, y, exact, tol;
           ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 59: warning: variable "y" was
          declared but never referenced
    double x, y, exact, tol;
              ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 59: warning: variable "exact" was
          declared but never referenced
    double x, y, exact, tol;
                 ^

"ESMC_FieldGridGridRegridCsrvUTest.C", line 59: warning: variable "tol" was
          declared but never referenced
    double x, y, exact, tol;
                        ^

"ESMC_FieldTripoleRegridUTest.C", line 37: warning: variable "DEG2RAD" was set
          but never used
    double max_x, max_y, dx, dy, DEG2RAD;
                                 ^

"ESMC_FieldTripoleRegridUTest.C", line 140: warning: variable "name" was
          declared but never referenced
    char name[80];
         ^

"ESMC_FieldTripoleRegridUTest.C", line 141: warning: variable "failMsg" was
          declared but never referenced
    char failMsg[80];
         ^

"ESMC_FieldTripoleRegridUTest.C", line 142: warning: variable "result" was
          declared but never referenced
    int result = 0;
        ^

"ESMC_FieldTripoleRegridUTest.C", line 159: warning: variable "exact" was
          declared but never referenced
    double x, y, exact, tol;
                 ^

"ESMC_FieldTripoleRegridUTest.C", line 159: warning: variable "tol" was
          declared but never referenced
    double x, y, exact, tol;
                        ^

"ESMC_FieldTripoleRegridUTest.C", line 257: warning: variable "unmappedaction"
          was declared but never referenced
    ESMC_UnmappedAction_Flag unmappedaction = ESMC_UNMAPPEDACTION_IGNORE;
                             ^

"ESMC_FieldTripoleRegridUTest.C", line 258: warning: variable "regridmethod"
          was declared but never referenced
    ESMC_RegridMethod_Flag regridmethod = ESMC_REGRIDMETHOD_CONSERVE;
                           ^

"ESMC_FieldSMMFromFileUTest.C", line 54: warning: variable "correct" was set
          but never used
    bool correct = true;
         ^

"ESMC_StateUTest.C", line 43: warning: variable "localrc" was declared but
          never referenced
    int localrc;
        ^

"ESMC_WebServProcCtrlUTest.C", line 130: warning: variable "result" was
          declared but never referenced
          int     result = 0;
                  ^

"ESMC_WebServServerSocketUTest.C", line 94: warning: variable "rc" was declared
          but never referenced
     int  rc;
          ^

"ESMC_WebServClientSocketUTest.C", line 94: warning: variable "rc" was declared
          but never referenced
     int  rc;
          ^

cat: ./PET*MBMesh_DualUTest.Log: No such file or directory
"user_CComponent.C", line 212: warning: variable "mesh" was declared but never
          referenced
    ESMC_Mesh mesh;
              ^

PGF90-W-0435-Array declared with zero size (user_model1.F90: 32)
  0 inform,   1 warnings,   0 severes, 0 fatal for user_model1
slurmstepd: error: *** JOB 15923855 ON h8c55 CANCELLED AT 2021-02-04T03:31:55 DUE TO TIME LIMIT ***
