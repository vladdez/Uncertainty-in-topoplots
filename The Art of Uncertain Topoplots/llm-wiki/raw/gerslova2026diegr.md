---
id: "gerslova2026diegr"
title: "diegr: Dynamic and Interactive EEG Graphics"
source_file: "The Art of Uncertain Topoplots/papers/gerslova2026diegr.pdf"
source_sha256: "7d0c002b1163d248657e92630fdf54e46f35cb32a7cd9a6a129f3666f4511943"
extraction_format: 1
---

# diegr: Dynamic and Interactive EEG Graphics — extracted text

> Machine-extracted from the archived PDF. Page and passage anchors are stable for this exact source hash. Check the PDF when layout, equations, tables, or OCR matter.

<a id="page-001"></a>

## PDF page 1

<a id="p001-b001"></a>

<!-- p001-b001 -->
Package ‘diegr’
                                          August 21, 2026
Title Dynamic and Interactive EEG Graphics
Version 0.3.1
Description Allows to visualize high-density electroencephalography (HD-EEG) data through interac-
     tive plots and animations, enabling exploratory and communicative analysis of temporal-
     spatial brain signals. Funder: Masaryk University (Grant No. MUNI/A/1457/2023).
License MIT + file LICENSE
Date 2026-08-19
Encoding UTF-8
RoxygenNote 7.3.3
Depends R (>= 4.1.0)
Imports dplyr, rlang, ggplot2, gganimate, plotly, rgl, sf, scales,
     stats, purrr, tidyr, MASS
LazyData true
Suggests av, gifski, magick, knitr, rmarkdown, RSQLite, DBI, dbplyr,
     testthat (>= 3.0.0)
VignetteBuilder knitr
Config/testthat/edition 3

<a id="p001-b002"></a>

<!-- p001-b002 -->
URL https://gerslovaz.github.io/diegr/
Config/Needs/website rmarkdown
NeedsCompilation no
Author Zdeňka Geršlová [aut, cre] (ORCID:
      <https://orcid.org/0000-0003-1973-0479>),
     Stanislav Katina [rev] (ORCID: <https://orcid.org/0000-0002-3256-5482>,
      Reviewer and Supervisor),
     Martin Lamoš [ctb] (Provided anonymized data from the project AZV
      NU21-04-0044)
Maintainer Zdeňka Geršlová <gerslovaz@math.muni.cz>
Repository CRAN
Date/Publication 2026-08-21 05:44:05 UTC

<a id="p001-b003"></a>

<!-- p001-b003 -->
1

<a id="page-002"></a>

## PDF page 2

<a id="p002-b001"></a>

<!-- p002-b001 -->
2                                                                                           animate_scalp

<a id="p002-b002"></a>

<!-- p002-b002 -->
Contents
         animate_scalp . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .     2
         animate_topo . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .      5
         animate_topo_mean . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .       7
         baseline_correction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .     9
         biosemi128 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .     11
         biosemi256 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .     12
         boxplot_epoch . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .    13
         boxplot_rt . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   14
         boxplot_subject . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .    15
         check_structure . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .    17
         compute_mean . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .       18
         create_scale . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   21
         epochdata . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .    23
         HCGSN256 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .       24
         interactive_surfaceplot . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .    25
         interactive_surfaceplot_curves . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .     26
         interactive_waveforms . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .      28
         make_triangulation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .     29
         outliers_epoch . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   31
         pick_data . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .    33
         pick_region . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .    35
         plot_point_mesh . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .      36
         plot_time_mean . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .     39
         plot_topo_mean . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .     41
         point_mesh . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .     43
         rtdata . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   45
         scalp_plot . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .   46
         summary_stats_rt . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .     48
         system1005 . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .     50
         topo_plot . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .    51

<a id="p002-b003"></a>

<!-- p002-b003 -->
Index                                                                                                     54

<a id="p002-b004"></a>

<!-- p002-b004 -->
animate_scalp              3D scalp plot animation in time

<a id="p002-b005"></a>

<!-- p002-b005 -->
Description

<a id="p002-b006"></a>

<!-- p002-b006 -->
Display a topographic 3D scalp animation of the change in amplitude over time. The function
     enables direct rendering in Rstudio Viewer or saving the animation in MP4 format or individual
     frames in PNG format to the chosen location.

<a id="page-003"></a>

## PDF page 3

<a id="p003-b001"></a>

<!-- p003-b001 -->
animate_scalp                                                                                          3

<a id="p003-b002"></a>

<!-- p003-b002 -->
Usage
    animate_scalp(
      data,
      amplitude,
      mesh,
      tri,
      coords = NULL,
      template = NULL,
      col_range = NULL,
      col_scale = NULL,
      sec = 0.3,
      frames_dir = NULL,
      output_path = NULL,
      framerate = 3,
      cleanup = TRUE
    )

<a id="p003-b003"></a>

<!-- p003-b003 -->
Arguments
    data           An input data frame or tibble with at least these required columns: time - the
                   number of time point, sensor - the sensor label and the column with the EEG
                   amplitude to plot specified in the argument amplitude.
    amplitude      A character string naming the column with EEG amplitude values.
    mesh           A "mesh" object (or a named list with the same structure) containing at least a D3
                   element with x, y and z coordinates of a point mesh used for computing the IM
                   model, and a template element specifying the sensor montage. If not defined,
                   the polygon point mesh with default settings from point_mesh function is used.
                   See details for more information about the structure.
    tri            A matrix with indices of the triangles. If missing, the triangulation is computed
                   using make_triangulation function from D2 element of the mesh.
    coords         Sensor coordinates as a tibble or data frame with named x, y, z and sensor
                   columns. The sensor labels must match the labels in sensor column in data. If
                   not defined, the template specified in mesh$template (or the default "HCGSN256")
                   is used.
    template       The kind of sensor template montage used. Available options are "HCGSN256",
                   "biosemi128", "biosemi256", and "system1005". Default setting is "HCGSN256".
    col_range      A vector with minimum and maximum value of the amplitude used in the colour
                   palette for plotting. If not defined, the range of interpolated signal is used.
    col_scale      Optionally, a colour scale to be utilised for plotting. If not defined, it is computed
                   from col_range.
    sec            The time interval used between individual animation frames, in seconds (default:
                   0.3).
    frames_dir     Directory where the individual frames will be saved. If NULL, the video is only
                   displayed in viewer and the frames are not saved.
    output_path    Optional path to the output mp4 video file (".mp4" extension is required for
                   correct rendering). If NULL, no video is created.

<a id="page-004"></a>

## PDF page 4

<a id="p004-b001"></a>

<!-- p004-b001 -->
4                                                                                       animate_scalp

<a id="p004-b002"></a>

<!-- p004-b002 -->
framerate          Number of frames per second for the output mp4 video (default: 3).
    cleanup            Logical. Indicates, if all the PNG files should be deleted after encoding video.
                       Default value is TRUE.

<a id="p004-b003"></a>

<!-- p004-b003 -->
Details

<a id="p004-b004"></a>

<!-- p004-b004 -->
Setting the parameter tri requires defining a mesh parameter. The parameter mesh should opti-
    mally be a "mesh" object (output from point_mesh function) or a list with the same structure (see
    point_mesh for more information). In that case, setting the argument tri is optional, and if it is
    absent, a triangulation based on the D2 element of the mesh is calculated and used in the plot. If
    the input mesh contains only 3D coordinates of a point mesh in D3 element, the use of previously
    created triangulation (through tri argument) is required.
    Notes: For exporting the video, setting frames_dir together with output_path is required.
    If a mesh object is provided, its internal template name (mesh$template) overrides the template ar-
    gument to ensure spatial consistency. When custom coords are provided, they are used for plotting
    the sensor locations. The template parameter (or mesh$template) is then used only for generating
    the background mesh if it is not provided.

<a id="p004-b005"></a>

<!-- p004-b005 -->
Value

<a id="p004-b006"></a>

<!-- p004-b006 -->
If frames_dir is NULL, the function creates an interactive 3D animation in the rgl window and
    invisibly returns NULL. If frames_dir is specified, individual animation frames (PNG) are saved. If
    output_path is also specified, an MP4 video is encoded and the function invisibly returns NULL.
    Additionally, the returned object carries a "diegr_metadata" attribute with metadata such as de-
    tails about the mesh used for plotting.

<a id="p004-b007"></a>

<!-- p004-b007 -->
See Also

<a id="p004-b008"></a>

<!-- p004-b008 -->
Static version: scalp_plot, animated 2D topo map: animate_topo

<a id="p004-b009"></a>

<!-- p004-b009 -->
Examples

<a id="p004-b010"></a>

<!-- p004-b010 -->
# This example may take a few seconds to render.
    # Run only if you want to generate the full animation.
    # Note: The example opens a rgl 3D viewer.
    # Prepare a data structure:
    s1e05 <- pick_data(epochdata, subject_rg = 1, epoch_rg = 5, time_rg = 10:20)
    # Plot animation with default mesh and triangulation:
    animate_scalp(s1e05, amplitude = "signal")

<a id="page-005"></a>

## PDF page 5

<a id="p005-b001"></a>

<!-- p005-b001 -->
animate_topo                                                                                        5

<a id="p005-b002"></a>

<!-- p005-b002 -->
animate_topo               Topographic map animation in time

<a id="p005-b003"></a>

<!-- p005-b003 -->
Description

<a id="p005-b004"></a>

<!-- p005-b004 -->
Display a topographic animation of the change in amplitude over time. The function enables direct
    rendering in Rstudio Viewer or saving the animation in gif format to the chosen location.

<a id="p005-b005"></a>

<!-- p005-b005 -->
Usage

<a id="p005-b006"></a>

<!-- p005-b006 -->
animate_topo(
      data,
      amplitude,
      t_lim,
      FS = 250,
      t0 = 1,
      mesh,
      coords = NULL,
      template = NULL,
      col_range = NULL,
      col_scale = NULL,
      show_legend = TRUE,
      contour = FALSE,
      output_path = NULL,
      ...
    )

<a id="p005-b007"></a>

<!-- p005-b007 -->
Arguments

<a id="p005-b008"></a>

<!-- p005-b008 -->
data              An input data frame or tibble with at least these required columns: time - the
                      number of time point,sensor - the sensor label and the column with the EEG
                      amplitude to plot specified in the argument amplitude.
    amplitude         A character specifying the name of the column from input data with EEG am-
                      plitude values.
    t_lim             A numeric vector of length 2 with limits of time points (i.e., the length of the
                      timeline displayed below the animation).
    FS                The sampling frequency. Default value is 250 Hz.
    t0                Index of the zero time point, i.e. point, where 0 ms should be marked (most
                      often time of the stimulus or time of the response).
    mesh              A "mesh" object (or a named list with the same structure) containing at least a
                      D2 element with x and y coordinates of a point mesh used for computing the IM
                      model, and a template element specifying the sensor montage. If not defined,
                      the point mesh with default settings from point_mesh function is used.

<a id="page-006"></a>

## PDF page 6

<a id="p006-b001"></a>

<!-- p006-b001 -->
6                                                                                             animate_topo

<a id="p006-b002"></a>

<!-- p006-b002 -->
coords             Sensor coordinates as a tibble or data frame with named x, y and sensor columns.
                       The sensor labels must match the labels in sensor column in data. If not de-
                       fined, the template specified in mesh$template (or the default "HCGSN256") is
                       used.
    template           The kind of sensor template montage used. Available options are "HCGSN256",
                       "biosemi128", "biosemi256", and "system1005". Default setting is "HCGSN256".
    col_range          A vector with minimum and maximum value of the amplitude used in the colour
                       palette for plotting. If not defined, the range of interpolated signal is used.
    col_scale          Optionally, a colour scale to be utilised for plotting. If not defined, it is computed
                       from col_range.
    show_legend        Logical. Indicates, whether legend should be displayed beside the graph. De-
                       fault value is TRUE.
    contour            Logical. Indicates, whether contours should be plotted in the graph. Default
                       value is FALSE.
    output_path        File path where the animation will be saved using gifski renderer (optional).
                       If not defined, the animation is plotted in the RStudio Viewer.
    ...                Additional parameters for animation according to gganimate::animate.

<a id="p006-b003"></a>

<!-- p006-b003 -->
Details
    For more details about required mesh structure see point_mesh function. If the input mesh structure
    does not match this format, an error or incorrect function behavior may occur.
    The time part of input data is assumed to be in numbers of time points, conversion to ms takes place
    inside the function for drawing the timeline labels. Due to the flexibility of the function (e.g. to
    mark and animate only a short section from the entire time course or to compare different data in
    the same time interval), it allows to enter and plot user-defined time ranges. If some values of the
    time are outside the t_lim range, the function writes a warning message - in that case the animation
    is still rendered, but the timeline will not match reality.
    Notes: If a mesh object is provided, its internal template name (mesh$template) overrides the
    template argument to ensure spatial consistency.
    When custom coords are provided, they are always used for plotting the sensor locations. The
    template parameter (or mesh$template) is then used only for generating the background mesh if
    it is not provided.

<a id="p006-b004"></a>

<!-- p006-b004 -->
Value
    If output_path is NULL, the function returns a gganim object and prints the animation to the RStu-
    dio Viewer. If output_path is specified, the animation is saved to the given file path and the
    function invisibly returns NULL.
    Additionally, the returned object carries a "diegr_metadata" attribute with metadata such as de-
    tails about the mesh used for plotting.

<a id="p006-b005"></a>

<!-- p006-b005 -->
See Also
    Static version: topo_plot, animated 3D scalp map: animate_scalp

<a id="page-007"></a>

## PDF page 7

<a id="p007-b001"></a>

<!-- p007-b001 -->
animate_topo_mean                                                                                      7

<a id="p007-b002"></a>

<!-- p007-b002 -->
Examples
    # This example may take a few seconds to render.
    # Run only if you want to generate the full animation.
    # Prepare a data structure:
    s1e05 <- pick_data(epochdata, subject_rg = 1, epoch_rg = 5, time_rg = 10:20)
    # Plot animation
    # t0 = 10 indicates the time point of stimulus in epochdata,
    # t_lim is the whole range of epochdata, we animate only a short period
    animate_topo(s1e05, amplitude = "signal", t_lim = c(1,50), t0 = 10)

<a id="p007-b003"></a>

<!-- p007-b003 -->
animate_topo_mean            Animate EEG average topographic map with confidence bounds

<a id="p007-b004"></a>

<!-- p007-b004 -->
Description
    An animation of the average signal time course as a topographic map along with the lower and
    upper bounds of the confidence interval. In the output, three facets are plotted per frame: CI lower,
    average, CI upper.

<a id="p007-b005"></a>

<!-- p007-b005 -->
Usage
    animate_topo_mean(
      data,
      t_lim,
      FS = 250,
      t0 = 1,
      mesh,
      coords = NULL,
      template = NULL,
      col_range = NULL,
      col_scale = NULL,
      show_legend = TRUE,
      contour = FALSE,
      output_path = NULL,
      ...
    )

<a id="p007-b006"></a>

<!-- p007-b006 -->
Arguments
    data               A data frame, tibble or a database table with input data to plot. It should be an
                       output from compute_mean function or an object with the same structure. Re-
                       quired columns: sensor - sensor labels, time - numbers of time points, average
                       - average signal values, ci_low and ci_up - lower and upper CI bounds.
    t_lim              Limits of time points (i.e., the length of the timeline displayed below the anima-
                       tion).

<a id="page-008"></a>

## PDF page 8

<a id="p008-b001"></a>

<!-- p008-b001 -->
8                                                                                     animate_topo_mean

<a id="p008-b002"></a>

<!-- p008-b002 -->
FS                The sampling frequency. Default value is 250 Hz.
    t0                Index of the zero time point, i.e. point, where 0 ms should be marked (most
                      often time of the stimulus or time of the response).
    mesh              A "mesh" object (or a named list with the same structure) containing at least a
                      D2 element with x and y coordinates of a point mesh used for computing the IM
                      model, and a template element specifying the sensor montage. If not defined,
                      the point mesh with default settings from point_mesh function is used.
    coords            Sensor coordinates as a tibble or data frame with named x, y and sensor columns.
                      The sensor labels must match the labels in sensor column in data. If not de-
                      fined, the template specified in mesh$template (or the default "HCGSN256") is
                      used.
    template          The kind of sensor template montage used. Available options are "HCGSN256",
                      "biosemi128", "biosemi256", and "system1005". Default setting is "HCGSN256".
    col_range         A vector with minimum and maximum value of the amplitude used in the colour
                      palette for plotting. If not defined, the range of the input signal is used.
    col_scale         Optionally, a colour scale to be utilised for plotting. If not defined, it is computed
                      from col_range.
    show_legend       Logical. Indicates, whether legend should be displayed below the graph. Default
                      value is TRUE.
    contour           Logical. Indicates, whether contours should be plotted in the graph. Default
                      value is FALSE.
    output_path       File path where the animation will be saved using gifski renderer (optional).
                      If not defined, the animation is plotted in the RStudio Viewer.
    ...               Additional parameters for animation according to gganimate::animate.

<a id="p008-b003"></a>

<!-- p008-b003 -->
Details
    Notes: If a mesh object is provided, its internal template name (mesh$template) overrides the
    template argument to ensure spatial consistency. When custom coords are provided, they are
    always used for plotting the sensor locations. The template parameter (or mesh$template) is then
    used only for generating the background mesh if it is not provided.

<a id="p008-b004"></a>

<!-- p008-b004 -->
Value
    If output_path is NULL, the function returns a magick-image object containing the animated
    frames and prints it to the RStudio Viewer. If output_path is specified, the animation is saved
    as a GIF to the given file path and the function invisibly returns NULL. The gifski and magick
    packages are required for animation export.
    Additionally, the returned object carries a "diegr_metadata" attribute with metadata such as de-
    tails about the mesh used for plotting.

<a id="p008-b005"></a>

<!-- p008-b005 -->
See Also
    animate_topo, compute_mean, baseline_correction, static version: plot_topo_mean

<a id="page-009"></a>

## PDF page 9

<a id="p009-b001"></a>

<!-- p009-b001 -->
baseline_correction                                                                                     9

<a id="p009-b002"></a>

<!-- p009-b002 -->
Examples
    # This example may take a few seconds to render.
    # Run only if you want to generate the full animation.

<a id="p009-b003"></a>

<!-- p009-b003 -->
# a) prepare data: compute the mean from baseline corrected signal for subject 2,
    # first 10 points and only 13 epochs (epochs 14 and 15 are outliers)
    edata <- pick_data(epochdata, subject_rg = 2, epoch_rg = 1:13, time_rg = 1:10)
    data_base <- baseline_correction(edata, baseline_range = 1:9) # baseline correction
    data_mean <- compute_mean(data_base, amplitude = "signal_base",
     type = "jack", domain = "space") # compute mean
    # b) render the animation
    # (t0 = 10 because the time of the stimulus in epochdata is in time point 10)
    animate_topo_mean(data_mean, t_lim = c(1,50), t0 = 10)

<a id="p009-b004"></a>

<!-- p009-b004 -->
baseline_correction           Baseline correction

<a id="p009-b005"></a>

<!-- p009-b005 -->
Description
    Compute amplitude values corrected to the selected baseline.
    The function computes a baseline value within each epoch and subtracts it from the signal.

<a id="p009-b006"></a>

<!-- p009-b006 -->
Usage
    baseline_correction(data, baseline_range, type = "absolute")

<a id="p009-b007"></a>

<!-- p009-b007 -->
Arguments
    data                 A data frame, tibble or a database table with input data, required columns:
                         time, epoch and signal. Optional columns: group, subject, sensor, and
                         condition, if present, are included in the grouping structure, see Details.
    baseline_range A numeric vector of time points used as the baseline (e.g., baseline_range =
                   125:250).
    type                 A character specifying the type of baseline correction. Currently, only "absolute"
                         is supported, any other value results in an error.

<a id="p009-b008"></a>

<!-- p009-b008 -->
Details
    Grouping logic for baseline correction: The function relies on a strict grouping hierarchy: "group" > "subject" > "sensor"
    The function dynamically identifies which of the optional variables are present in the data, preserves
    their hierarchical order, and uses them to group the data.
    Dealing with baseline_range: If the values from baseline_range vector extend beyond the range
    of the time column, the baseline computation proceeds as follows:

<a id="p009-b009"></a>

<!-- p009-b009 -->
1. If a part of the baseline_range vector is in the time column and part is outside its range, the
           baseline correction is computed only from the part inside a time range.

<a id="page-010"></a>

## PDF page 10

<a id="p010-b001"></a>

<!-- p010-b001 -->
10                                                                                     baseline_correction

<a id="p010-b002"></a>

<!-- p010-b002 -->
2. If the whole baseline_range vector is out of the time range, the baseline and also the
           signal_base values of the output are NAs. In both cases, the function returns the output data
           along with a warning.

<a id="p010-b003"></a>

<!-- p010-b003 -->
Notes:

<a id="p010-b004"></a>

<!-- p010-b004 -->
• Rows with NA values in the signal column are ignored when computing the baseline, and a
          warning is issued.
        • If any grouping variable present in the data contains only NA values, a warning is issued, as
          this may lead to invalid or uninformative grouping.

<a id="p010-b005"></a>

<!-- p010-b005 -->
Value

<a id="p010-b006"></a>

<!-- p010-b006 -->
A data frame/tibble with added columns:

<a id="p010-b007"></a>

<!-- p010-b007 -->
signal_base        Signal corrected by subtracting the baseline for each epoch.
     baseline           A baseline value used for correction.

<a id="p010-b008"></a>

<!-- p010-b008 -->
Additionally, the returned object carries a "diegr_metadata" attribute with metadata.

<a id="p010-b009"></a>

<!-- p010-b009 -->
Examples

<a id="p010-b010"></a>

<!-- p010-b010 -->
# Computing baseline correction for subject 1 on first 9 points (points before stimulus),
     # sensor "E1"
     # a) Prepare data and compute
     data01 <- epochdata |> dplyr::filter(.data$subject == 1 & .data$sensor == "E1")
     basedata <- baseline_correction(data01, baseline_range = 1:9, type = "absolute")

<a id="p010-b011"></a>

<!-- p010-b011 -->
## Note: You can also use baseline_correction() on the whole epochdata
     ## and then filter selected subject and sensor, the results are the same,
     ## the procedure above was chosen only for the speed of the example.

<a id="p010-b012"></a>

<!-- p010-b012 -->
# b) Plot raw (black line) and corrected (red line) signal for epoch 1
     epoch1 <- basedata |> dplyr::filter(.data$epoch == 1)
     plot(epoch1$signal, type = "l", ylim = c(-20, 30), main = "Raw (black) vs Corrected (red) Signal",
     xlab = "time point", ylab = "amplitude")
     lines(epoch1$signal_base, col = "red")

<a id="p010-b013"></a>

<!-- p010-b013 -->
# Set baseline_range outside of time range
     # results in NA's in baseline and signal_base columns,
     # also returns a warning message
     basedata <- baseline_correction(data01, baseline_range = 70:80, type = "absolute")
     head(basedata)

<a id="page-011"></a>

## PDF page 11

<a id="p011-b001"></a>

<!-- p011-b001 -->
biosemi128                                                                                                 11

<a id="p011-b002"></a>

<!-- p011-b002 -->
biosemi128                       Coordinates of the spherical BioSemi system with 128 electrodes

<a id="p011-b003"></a>

<!-- p011-b003 -->
Description
    A dataset containing the Cartesian coordinates of high-density EEG sensor positions of the BioSemi
    system in 3D space on an idealized spherical surface, along with their corresponding positions in
    2D space. This template contains 128 electrode positions in the 3D space and for the 2D layout.

<a id="p011-b004"></a>

<!-- p011-b004 -->
Usage
    data("biosemi128")

<a id="p011-b005"></a>

<!-- p011-b005 -->
Format
    A list with the following elements:

<a id="p011-b006"></a>

<!-- p011-b006 -->
D2 A tibble with 3 columns containing x and y coordinates and sensor labels (according to the
        BioSemi naming convention) in 2D.
    D3 A tibble with 4 columns containing x, y and z coordinates and sensor labels (according to the
        BioSemi naming convention) in 3D. See ’Details’ for more information.
    ROI A factor containing the name of the region to which the corresponding sensor belongs. The
        levels are: "central", "frontal", "occipital", "parietal", and "temporal". Sensors were assigned
        to anatomical regions based on their closest spatial proximity (3D Euclidean distance) to the
        standardized 10-05 system electrodes.

<a id="p011-b007"></a>

<!-- p011-b007 -->
Details
    The axis orientation in the 3D case is as follows:

<a id="p011-b008"></a>

<!-- p011-b008 -->
• x-axis: left (-) to right (+),
          • y-axis: posterior (-) to anterior (+),
          • z-axis: inferior (-) to superior (+). Because this is an idealized spherical model, the origin (0,
            0, 0) represents the geometric center of the sphere.

<a id="p011-b009"></a>

<!-- p011-b009 -->
The coordinates originate from the MNE-Python (3D montage) and FieldTrip (2D layout) GitHub
    repositories.

<a id="p011-b010"></a>

<!-- p011-b010 -->
Source
    The MNE-Python GitHub repository, https://github.com/mne-tools/mne-python/tree/main/
    mne/channels/data/montages The FieldTrip GitHub repository, https://github.com/fieldtrip/
    fieldtrip/tree/master/template/layout

<a id="p011-b011"></a>

<!-- p011-b011 -->
References
    BioSemi Headcaps: https://www.biosemi.com/headcap2.htm

<a id="page-012"></a>

## PDF page 12

<a id="p012-b001"></a>

<!-- p012-b001 -->
12                                                                                               biosemi256

<a id="p012-b002"></a>

<!-- p012-b002 -->
Examples
      # A simple plot of sensor coordinates from BioSemi 128 system spherical template as points in 2D
      plot(biosemi128$D2[,1:2], pch = 16, asp = 1)

<a id="p012-b003"></a>

<!-- p012-b003 -->
biosemi256                    Coordinates of the spherical BioSemi system with 256 electrodes

<a id="p012-b004"></a>

<!-- p012-b004 -->
Description
      A dataset containing the Cartesian coordinates of high-density EEG sensor positions of the BioSemi
      system in 3D space on an idealized spherical surface, along with their corresponding positions in
      2D space. This template contains 256 electrode positions in the 3D space and for the 2D layout.

<a id="p012-b005"></a>

<!-- p012-b005 -->
Usage
      data("biosemi256")

<a id="p012-b006"></a>

<!-- p012-b006 -->
Format
      A list with the following elements:
      D2 A tibble with 3 columns containing x and y coordinates and sensor labels (according to the
          BioSemi naming convention) in 2D.
      D3 A tibble with 4 columns containing x, y and z coordinates and sensor labels (according to the
          BioSemi naming convention) in 3D. See ’Details’ for more information.
      ROI A factor containing the name of the region to which the corresponding sensor belongs. The
          levels are: "central", "frontal", "occipital", "parietal", and "temporal". Sensors were assigned
          to anatomical regions based on their closest spatial proximity (3D Euclidean distance) to the
          standardized 10-05 system electrodes.

<a id="p012-b007"></a>

<!-- p012-b007 -->
Details
      The axis orientation in the 3D case is as follows:
          • x-axis: left (-) to right (+),
          • y-axis: posterior (-) to anterior (+),
          • z-axis: inferior (-) to superior (+). Because this is an idealized spherical model, the origin (0,
            0, 0) represents the geometric center of the sphere.
      The coordinates originate from the MNE-Python (3D montage) and FieldTrip (2D layout) GitHub
      repositories.

<a id="p012-b008"></a>

<!-- p012-b008 -->
Source
      The MNE-Python GitHub repository, https://github.com/mne-tools/mne-python/tree/main/
      mne/channels/data/montages The FieldTrip GitHub repository, https://github.com/fieldtrip/
      fieldtrip/tree/master/template/layout

<a id="page-013"></a>

## PDF page 13

<a id="p013-b001"></a>

<!-- p013-b001 -->
boxplot_epoch                                                                                         13

<a id="p013-b002"></a>

<!-- p013-b002 -->
References
    BioSemi Headcaps: https://www.biosemi.com/headcap2.htm

<a id="p013-b003"></a>

<!-- p013-b003 -->
Examples
    # A simple plot of sensor coordinates from BioSemi 256 system spherical template as points in 2D
    plot(biosemi256$D2[,1:2], pch = 16, asp = 1)

<a id="p013-b004"></a>

<!-- p013-b004 -->
boxplot_epoch                Plot boxplots of EEG amplitude on epoch level

<a id="p013-b005"></a>

<!-- p013-b005 -->
Description
    Function for plotting interactive or static boxplots of EEG amplitude in individual epochs within the
    chosen time interval. The function assumes data from a single subject and a single sensor. Both the
    static ggplot output and the interactive plotly output can be easily customized and edited, while
    the interactive plotly output additionally allows easy identification of the epochs corresponding to
    outliers.

<a id="p013-b006"></a>

<!-- p013-b006 -->
Usage
    boxplot_epoch(
      data,
      amplitude = "signal",
      epoch = NULL,
      time_lim,
      title_label = NULL,
      use_latex = TRUE,
      interactivity = TRUE
    )

<a id="p013-b007"></a>

<!-- p013-b007 -->
Arguments
    data               A data frame or a database table with EEG dataset. Required columns: epoch,
                       time and the column with EEG amplitude named as in amplitude parameter.
    amplitude          A character specifying the name of the column from input data with an EEG
                       amplitude values. Default is "signal".
    epoch              A vector with numbers of epochs to plot. If missing, boxplots are drawn for all
                       avaliable epochs in data.
    time_lim           A numeric vector with time range to plot.
    title_label        A character string specifying the title of the plot. Defaults to NULL for plot
                       without title.
    use_latex          A logical value indicating whether to use LaTeX formatting for the y-axis title.
                       The default is TRUE.
    interactivity      Logical. Determines whether to render an interactive plotly graph (default) or
                       a static ggplot graph.

<a id="page-014"></a>

## PDF page 14

<a id="p014-b001"></a>

<!-- p014-b001 -->
14                                                                                                boxplot_rt

<a id="p014-b002"></a>

<!-- p014-b002 -->
Details

<a id="p014-b003"></a>

<!-- p014-b003 -->
The input data frame or database table must contain at least following columns: epoch - a column
      with epoch numbers, time - a column with time point numbers, and a column with measured EEG
      signal values (or their averages) called as in amplitude.

<a id="p014-b004"></a>

<!-- p014-b004 -->
Value

<a id="p014-b005"></a>

<!-- p014-b005 -->
A plotly or ggplot2 object with boxplots of EEG amplitude for individual epochs.
      Additionally, the returned object carries a "diegr_metadata" attribute with metadata.

<a id="p014-b006"></a>

<!-- p014-b006 -->
See Also

<a id="p014-b007"></a>

<!-- p014-b007 -->
boxplot_subject

<a id="p014-b008"></a>

<!-- p014-b008 -->
Examples
      # Interactive boxplots of signal from channel E34 for subject 1 (health control)
      # in time points 10:20
      exampledata <- epochdata |>
      pick_data(subject_rg = 1, sensor_rg = "E34")
      boxplot_epoch(exampledata, amplitude = "signal", time_lim = c(10:20),
      title_label = "Subject 1, channel E34")

<a id="p014-b009"></a>

<!-- p014-b009 -->
# static version of the previous graph
      boxplot_epoch(exampledata, amplitude = "signal", time_lim = c(10:20),
      title_label = "Subject 1, channel E34", interactivity = FALSE)

<a id="p014-b010"></a>

<!-- p014-b010 -->
boxplot_rt                  Plot boxplots of response times

<a id="p014-b011"></a>

<!-- p014-b011 -->
Description

<a id="p014-b012"></a>

<!-- p014-b012 -->
Function for plotting interactive or static boxplots of response time in individual epochs for selected
      subjects. Both the static ggplot output and the interactive plotly output can be easily customized
      and edited, while the interactive plotly output additionally allows easy identification of the epoch
      numbers corresponding to outliers.
      If the condition column is present in the input data, the boxplots are color-coded by condition.

<a id="p014-b013"></a>

<!-- p014-b013 -->
Usage

<a id="p014-b014"></a>

<!-- p014-b014 -->
boxplot_rt(data, subject = NULL, interactivity = TRUE)

<a id="page-015"></a>

## PDF page 15

<a id="p015-b001"></a>

<!-- p015-b001 -->
boxplot_subject                                                                                    15

<a id="p015-b002"></a>

<!-- p015-b002 -->
Arguments
    data               A data frame or a database table containing response time data. Required columns:
                       subject, epoch, RT (value of response time in ms). An optional condition col-
                       umn may be used to colour-code the boxplots.
    subject            A vector with IDs of subjects to plot. If missing, boxplots are drawn for all
                       available subjects in data.
    interactivity      Logical. Determines whether to render an interactive plotly graph (default) or
                       a static ggplot graph.

<a id="p015-b003"></a>

<!-- p015-b003 -->
Value
    A plotly or ggplot2 object with boxplots of response times.
    Additionally, the returned object carries a "diegr_metadata" attribute with metadata.

<a id="p015-b004"></a>

<!-- p015-b004 -->
Examples
    # Display interactive boxplots for both example subjects
    boxplot_rt(rtdata)

<a id="p015-b005"></a>

<!-- p015-b005 -->
# Display static boxplots for both example subjects
    boxplot_rt(rtdata, interactivity = FALSE)

<a id="p015-b006"></a>

<!-- p015-b006 -->
# Interactive boxplots per subject divided by condition
    # a) add condition column to data (just for example)
    data_cond <- rtdata
    data_cond$condition <- c(rep("a", 7), rep("b", 7), rep("a", 8), rep("b",7))
    # b) plot boxplots (colour-coded by condition)
    boxplot_rt(data_cond)

<a id="p015-b007"></a>

<!-- p015-b007 -->
boxplot_subject             Plot boxplots of EEG amplitude across subjects

<a id="p015-b008"></a>

<!-- p015-b008 -->
Description
    Function for plotting interactive or static boxplots of EEG amplitude across subjects for a single
    epoch and channel, within a specified time interval. The function assumes data from a single epoch
    and a single sensor. Both the static ggplot output and the interactive plotly output can be easily
    customized and edited, while the interactive plotly output additionally allows easy identification
    of the subjects corresponding to outliers.

<a id="p015-b009"></a>

<!-- p015-b009 -->
Usage
    boxplot_subject(
      data,
      amplitude = "signal",
      subject = NULL,
      time_lim,

<a id="page-016"></a>

## PDF page 16

<a id="p016-b001"></a>

<!-- p016-b001 -->
16                                                                                     boxplot_subject

<a id="p016-b002"></a>

<!-- p016-b002 -->
title_label = NULL,
         use_latex = TRUE,
         interactivity = TRUE
     )

<a id="p016-b003"></a>

<!-- p016-b003 -->
Arguments
     data               A data frame or a database table with EEG dataset. Required columns: subject,
                        sensor, time and the column with EEG amplitude named as in amplitude
                        parameter.
     amplitude          A character specifying the name of the column from input data with an EEG
                        amplitude values. Default is "signal".
     subject            A vector with IDs of subjects to plot. If missing, boxplots are drawn for all
                        avaliable subjects in data.
     time_lim           A numeric vector with time range to plot.
     title_label        A character string specifying the title of the plot. Defaults to NULL for plot
                        without title.
     use_latex          A logical value indicating whether to use LaTeX formatting for the y-axis title.
                        The default is TRUE.
     interactivity      Logical. Determines whether to render an interactive plotly graph (default) or
                        a static ggplot graph.

<a id="p016-b004"></a>

<!-- p016-b004 -->
Details
     The input data frame or database table must contain at least following columns: subject - a column
     with subject IDs, time - a column with time point numbers, and a column with measured EEG signal
     values (or their averages) called as in amplitude.
     Note: The function assumes that subject IDs are unique across the entire dataset. Using the same
     subject IDs in multiple groups may result in incorrect or misleading visualizations.

<a id="p016-b005"></a>

<!-- p016-b005 -->
Value
     A plotly or ggplot2 object with boxplots of EEG amplitude across subjects.
     Additionally, the returned object carries a "diegr_metadata" attribute with metadata.

<a id="p016-b006"></a>

<!-- p016-b006 -->
See Also
     boxplot_epoch

<a id="p016-b007"></a>

<!-- p016-b007 -->
Examples
     # Interactive boxplots of signal from channel E34 in epoch 1
     # for both subjects in chosen time points
     ## Note: it has no statistical sense to make boxplot from only 2 observations, but
     ## larger example dataset is not possible due to size limit of the package
     exampledata <- epochdata |>
     pick_data(sensor_rg = "E34", epoch_rg = 1)
     boxplot_subject(exampledata, amplitude = "signal", time_lim = c(10:20),

<a id="page-017"></a>

## PDF page 17

<a id="p017-b001"></a>

<!-- p017-b001 -->
check_structure                                                                                      17

<a id="p017-b002"></a>

<!-- p017-b002 -->
title_label = "Sensor E34, epoch 1")

<a id="p017-b003"></a>

<!-- p017-b003 -->
# Static version of the previous graph
    boxplot_subject(exampledata, amplitude = "signal", time_lim = c(10:20),
    title_label = "Sensor E34, epoch 1", interactivity = FALSE)

<a id="p017-b004"></a>

<!-- p017-b004 -->
check_structure              Check data structure and print inferred hierarchy

<a id="p017-b005"></a>

<!-- p017-b005 -->
Description

<a id="p017-b006"></a>

<!-- p017-b006 -->
A diagnostic helper function to run before starting the diegr analysis. It infers the experimental
    hierarchy based on the standardized column names strictly required by the package and prints a
    readable summary. Supports data frames, tibbles, and database tables.

<a id="p017-b007"></a>

<!-- p017-b007 -->
Usage

<a id="p017-b008"></a>

<!-- p017-b008 -->
check_structure(data, value_col = "signal")

<a id="p017-b009"></a>

<!-- p017-b009 -->
Arguments

<a id="p017-b010"></a>

<!-- p017-b010 -->
data                A data frame, tibble, or database table containing the EEG data in long format.
    value_col           Character string specifying the signal amplitude column name (default "signal").

<a id="p017-b011"></a>

<!-- p017-b011 -->
Details

<a id="p017-b012"></a>

<!-- p017-b012 -->
The diegr package does not strictly require all structural columns for every function (e.g., group,
    condition, and epoch may be optional). However, if they are present, they must follow the exact
    naming convention (group, subject, sensor, epoch, condition, time). Only the signal ampli-
    tude column can be custom-named via the value_col argument. This function helps verify which
    columns were correctly recognized.

<a id="p017-b013"></a>

<!-- p017-b013 -->
Value

<a id="p017-b014"></a>

<!-- p017-b014 -->
The original data object invisibly, allowing it to be used in pipes.

<a id="p017-b015"></a>

<!-- p017-b015 -->
Examples
    # Checking the structure of epochdata
    check_structure(epochdata)

<a id="page-018"></a>

## PDF page 18

<a id="p018-b001"></a>

<!-- p018-b001 -->
18                                                                                       compute_mean

<a id="p018-b002"></a>

<!-- p018-b002 -->
compute_mean               Calculate mean in temporal or spatial domain

<a id="p018-b003"></a>

<!-- p018-b003 -->
Description
      Calculate a pointwise or a jackknife (leave-one-out) average signal across temporal or spatial do-
      main together with standard error and pointwise confidence interval (CI) bounds. Pointwise aver-
      ages can be computed in two ways: standard (un-weighted) by default, or weighted using the values
      in the column specified by weights_col.
      The function computes an average at group, subject, sensor/time point, condition or epoch level
      (according to the level parameter). For the option level = "epoch" the epochs are averaged etc.
      Function assumes pre-prepared data according to the chosen level.

<a id="p018-b004"></a>

<!-- p018-b004 -->
Usage
      compute_mean(
        data,
        amplitude = "signal_base",
        domain = c("time", "space"),
        level = c("epoch", "condition", "sensor", "subject", "group"),
        type = c("point", "jack"),
        weights_col = NULL,
        R = NULL,
        alpha = 0.95
      )

<a id="p018-b005"></a>

<!-- p018-b005 -->
Arguments
      data               A data frame, tibble or a database table with input data, required columns: time
                         or sensor (according to the selected domain), the column with the EEG am-
                         plitude specified in the argument amplitude and columns corresponding to the
                         selected level.
      amplitude          A character specifying the name of the column from input data with an EEG am-
                         plitude values. Default is "signal_base" for computing average from baseline
                         corrected signal.
      domain             A character specifying the domain over which the average is computed. One of
                         "time" or "space". Option "time" computes a time-resolved average at each
                         time point, whereas "space" computes a space-resolved average at each sensor.
      level              A character specifying the level of average calculation. The possible values are
                         "epoch","condition", "sensor", "subject" and "group". See Details for
                         more information.
      type               A character specifying the method of calculating the average, "point" for point-
                         wise average and "jack" for jackknife leave-one-out average.
      weights_col        A character specifying the name of the column containing observation weights.
                         If NULL, un-weighted standard pointwise average is computed.

<a id="page-019"></a>

## PDF page 19

<a id="p019-b001"></a>

<!-- p019-b001 -->
compute_mean                                                                                              19

<a id="p019-b002"></a>

<!-- p019-b002 -->
R                     The number of replications used in bootstrap interval calculation. Required only
                          for computing pointwise mean. Default value is 1000.
    alpha                 A number indicating confidence interval level. The default value is 0.95 for 95%
                          confidence intervals.

<a id="p019-b003"></a>

<!-- p019-b003 -->
Details
    The function supports averaging at different hierarchical levels of the data (using level argument):

<a id="p019-b004"></a>

<!-- p019-b004 -->
• "epoch": averaging across epochs. Returns the average curve (time domain) or sensor array
            (space domain) for each combination of other grouping variables.
          • "condition": averages across experimental conditions.
          • "sensor": averages across sensors (space domain) or time points (time domain).
          • "subject": averages across subjects.
          • "group": averages across groups of subjects (highest aggregation level). The function as-
            sumes input adapted to the desired level of averaging (i.e. for epoch level the epoch column
            must be present in data etc.). For all levels higher than epochs, the averages of the lower level
            are assumed as the input data.

<a id="p019-b005"></a>

<!-- p019-b005 -->
Weighted vs un-weighted average (type = "point"):

<a id="p019-b006"></a>

<!-- p019-b006 -->
• If weights_col is NULL, each observation is treated equally (with weight = 1), producing a
            standard un-weighted mean, standard errors (SE), and CI.
          • If weights_col is provided, a weighted average is computed using the values in the specified
            column as weights. SE and CI are computed based on the weighted variance.

<a id="p019-b007"></a>

<!-- p019-b007 -->
Computing standard error of the mean:

<a id="p019-b008"></a>

<!-- p019-b008 -->
• For type = "point", the standard error is computed as sample standard deviation divided by
            square root of the sample size for standard mean or its weighted alternative (if weights_col
            is specified).
          • For type = "jack", the standard error is jackknife standard error of the mean (for the exact
            formula see Efron and Tibshirani 1994).

<a id="p019-b009"></a>

<!-- p019-b009 -->
Computing point confidence intervals: For each average value, the upper and lower bounds of the
    point confidence interval are also available.

<a id="p019-b010"></a>

<!-- p019-b010 -->
• Setting type = "point" and R: the bounds are computed using percentile method from boot-
            strapping with R replicates (can be slow for large amounts of data).
          • Setting type = "point" without specifying R: the bounds are computed using standard error
            of the mean and approximation by the Student distribution.
          • Setting type = "jack": the bounds are computed using jackknife standard error of the mean
            and approximation by the Student t-distribution. Note: used method assumes equal variance
            and symmetric distribution, which may be problematic for very small samples.

<a id="p019-b011"></a>

<!-- p019-b011 -->
Note: If there are NAs in amplitude, weights_col or other columns, corresponding rows are ig-
    nored in the average calculation and function prints a warning message.

<a id="page-020"></a>

## PDF page 20

<a id="p020-b001"></a>

<!-- p020-b001 -->
20                                                                                     compute_mean

<a id="p020-b002"></a>

<!-- p020-b002 -->
Value
     A tibble with resulting average and CI bounds according to the chosen level, domain and alpha
     arguments. The statistics are saved in columns
        • average for computed average amplitude value,
        • n for number of observations used in average computing,
        • se for standard error of the mean,
        • ci_low for lower bound of the confidence interval and
        • ci_up for upper bound of the confidence interval.
     Additionally, the returned object carries a "diegr_metadata" attribute with metadata such as level
     and domain used in computing.

<a id="p020-b003"></a>

<!-- p020-b003 -->
References
     Efron B., Tibshirani RJ. An Introduction to the Bootstrap. Chapman & Hall/CRC; 1994.

<a id="p020-b004"></a>

<!-- p020-b004 -->
Examples
     # Average (pointwise) raw signal for subject 1 and electrode E1
     # without outlier epoch 14
     avg_data <- epochdata |>
     pick_data(subject_rg = 1, epoch_rg = 1:13, sensor_rg = "E1") |>
     compute_mean(amplitude = "signal", level = "epoch", domain = "time")
     str(avg_data)

<a id="p020-b005"></a>

<!-- p020-b005 -->
# plot the result using interactive plot with pointwise CI
     avg_data |>
     pick_data(subject = 1) |>
     interactive_waveforms(amplitude = "average", t0 = 10,
     level = "sensor", avg = FALSE, CI = TRUE)

<a id="p020-b006"></a>

<!-- p020-b006 -->
# Jackknife average signal for subject 1 in all electrodes in time point 11 with baseline correction
     # on interval 1:9 (again without outlier epoch 14)
     # a) prepare corrected data
     basedata <- pick_data(epochdata, subject_rg = 1) |>
     baseline_correction(baseline_range = 1:9, type = "absolute")
     # b) filter time point 11 (without epoch 14) and compute the average
     avg_data <- pick_data(basedata, time_rg = 11, epoch_rg = 1:13) |>
     compute_mean(amplitude = "signal_base", level = "epoch", domain = "space", type = "jack")
     str(avg_data)
     # c) plot the result with topo_plot()
     topo_plot(data = avg_data, amplitude = "average")

<a id="p020-b007"></a>

<!-- p020-b007 -->
# Space average on subject level (average for all included subjects in time point 11)
     # a) compute mean from all epochs for each subject
     mean_epoch <- epochdata |>
     pick_data(time_rg = 11, epoch_rg = 1:13) |>
     compute_mean(amplitude = "signal", level = "epoch", domain = "space", type = "point")
     # b) compute mean on subject level

<a id="page-021"></a>

## PDF page 21

<a id="p021-b001"></a>

<!-- p021-b001 -->
create_scale                                                                                          21

<a id="p021-b002"></a>

<!-- p021-b002 -->
mean_subjects <- compute_mean(mean_epoch, amplitude = "average", level = "subject",
    domain = "space", type = "point")
    head(mean_subjects)
    # c) compute weighted mean with number of observations as weights
    weighted_mean_subjects <- compute_mean(mean_epoch, amplitude = "average", level = "subject",
    domain = "space", type = "point", weights_col = "n")
    head(weighted_mean_subjects)

<a id="p021-b003"></a>

<!-- p021-b003 -->
create_scale                Create colour scale used in topographic figures

<a id="p021-b004"></a>

<!-- p021-b004 -->
Description
    Create colour scale used in topographic figures

<a id="p021-b005"></a>

<!-- p021-b005 -->
Usage
    create_scale(
      col_range,
      k = NULL,
      type = c("redblue", "topo"),
      symmetric = TRUE
    )

<a id="p021-b006"></a>

<!-- p021-b006 -->
Arguments
    col_range          A numeric vector with required range of the variable to be plotted in the colour
                       scale.
    k                  A number from interval (0,1) indicating a sequence step for the colour palette.
                       The smaller number, the finer division of the data range interval. See Details for
                       more information about auto-computing if NULL.
    type               A character indicating the type of color palette to create. Available options:
                       "redblue" (default value) for red-blue palette and "topo" for topographical
                       palette, see Details for more information.
    symmetric          A logical value indicating whether the color range should be strictly symmetrized
                       around zero. Defaults to TRUE.

<a id="p021-b007"></a>

<!-- p021-b007 -->
Details
    The topographical palette (type = "topo") is created according to topographical colours: negative
    values correspond to shades of blue and purple and positive values to shades of green, yellow and
    red. The zero value of the variable is always at the border of blue and green shades.
    The red-blue palette (type = "redblue") has negative values corresponding to shades of blue and
    positive values corresponding to shades of red.

<a id="page-022"></a>

## PDF page 22

<a id="p022-b001"></a>

<!-- p022-b001 -->
22                                                                                              create_scale

<a id="p022-b002"></a>

<!-- p022-b002 -->
By default (symmetric = TRUE), to guarantee true perceptual uniformity and equal visual emphasis,
     the provided col_range is additionally automatically symmetrized around zero based on its max-
     imum absolute value. For example, an input range of c(-2, 5) is internally expanded to c(-5,
     5).
     For the default redblue palette, this symmetrization ensures that equivalent positive and negative
     amplitudes are mapped to identical color intensities. Furthermore, the redblue palette strictly an-
     chors the zero-point to a neutral background color, preventing false perceptual boundaries. (Note
     that while the legacy topo palette is also symmetrized, it retains its characteristic blue-green transi-
     tion at zero).
     Setting symmetric = FALSE disables this zero-centering expansion, which may be useful for strictly
     unipolar data or heavily skewed distributions, though it sacrifices equal visual emphasis for opposite
     polarities.
     To compare results for different subjects or conditions, set the same col_range for all cases. Oth-
     erwise, the colours are assigned separately in each plot and are not consistent with each other.
     The parameter k is set by default with respect to the range of col_range as follows:

<a id="p022-b003"></a>

<!-- p022-b003 -->
• k = 0.1 for range ≤ 30,
        • k = 0.03 for range ≥ 70,
        • k = 0.04 otherwise.

<a id="p022-b004"></a>

<!-- p022-b004 -->
Value

<a id="p022-b005"></a>

<!-- p022-b005 -->
A list with two components:

<a id="p022-b006"></a>

<!-- p022-b006 -->
colors              A vector with hexadecimal codes of palette colours.
     breaks              A vector with breaks for cutting the data range.

<a id="p022-b007"></a>

<!-- p022-b007 -->
The list is intended for use in scale_fill_gradientn or similar plotting calls.
     Additionally, the returned object carries a "diegr_metadata" attribute with metadata such as the
     actual k used for creating the scale.

<a id="p022-b008"></a>

<!-- p022-b008 -->
Examples
     # Create red-blue scale on interval (-10,10) with default step number
     create_scale(col_range = c(-10,10), type = "redblue")

<a id="p022-b009"></a>

<!-- p022-b009 -->
# Create an asymmetric topographic scale on interval c(-5,10) with small k (finer division)
     CStopo <- create_scale(col_range = c(-5, 10), k = 0.02, type = "topo", symmetric = FALSE)
     # plot colours of the scale as points
     k_col <- length(CStopo$colors)
     plot(1:k_col, rep(1, k_col), col = CStopo$colors, pch = 16,
      axes = FALSE, ylab = "", xlab = "")

<a id="page-023"></a>

## PDF page 23

<a id="p023-b001"></a>

<!-- p023-b001 -->
epochdata                                                                                               23

<a id="p023-b002"></a>

<!-- p023-b002 -->
epochdata                    Example high-density (HD-EEG) epoched data

<a id="p023-b003"></a>

<!-- p023-b003 -->
Description
    This dataset is a short slice of a HD-EEG dataset from a study investigating the impact of deep
    brain stimulation on patients with advanced Parkinson’s disease (Madetko-Alster, 2025). During
    the experiment subjects performed a simple visual motor task (pressing the response button in case
    of target visual stimulus presentation). The data was measured by 256-channel HydroCel Geodesic
    Sensor Net and sampling frequency is 250 Hz. The study was carried out by Central European
    Institute of Technology in Brno and was supported by Czech Health Research Council AZV NU21-
    04-00445.
    Example dataset contains amplitude values measured on chosen 204 channels in 50 time points
    (with the stimulus in the time point 10) for 2 representative subjects (one patient and one healthy
    control subject). From the total number of 50 epochs for each subject, 14 (or 15) epochs were se-
    lected for the sample dataset. This data is intended for testing EEG preprocessing and visualization
    methods.

<a id="p023-b004"></a>

<!-- p023-b004 -->
Usage
    data("epochdata")

<a id="p023-b005"></a>

<!-- p023-b005 -->
Format
    The data frame consist of 295 800 rows (50 time points x 204 sensors x 29 epochs) and five columns:

<a id="p023-b006"></a>

<!-- p023-b006 -->
time Number of time point. Time point 10 corresponds to stimulus onset (0 ms) and the interval
         between two time points corresponds to the time period 4 ms.
    signal HD-EEG signal amplitude, in microvolts.
    epoch Factor variable with epoch number, 14 epochs for subject 1, 15 epochs for subject 2.
    sensor Sensor label, according to labeling used in the EGI Geodesic Sensor Net Technical Manual.
    subject Factor variable with subject ID, 1 - representative healthy control subject, 2 - representative
         patient subject.

<a id="p023-b007"></a>

<!-- p023-b007 -->
Source
    Central European Institute of Technology, Masaryk University, Brno, Czech Republic.

<a id="p023-b008"></a>

<!-- p023-b008 -->
References
    EGI Geodesic Sensor Net Technical Manual (2024) https://www.egi.com/knowledge-center
    Madetko-Alster N., Alster P., Lamoš M., Šmahovská L., Boušek T., Rektor I. and Bočková M.
    The role of the somatosensory cortex in self-paced movement impairment in Parkinson’s disease.
    Clinical Neurophysiology. 2025, vol. 171, 11-17.

<a id="page-024"></a>

## PDF page 24

<a id="p024-b001"></a>

<!-- p024-b001 -->
24                                                                                              HCGSN256

<a id="p024-b002"></a>

<!-- p024-b002 -->
Examples
      # Data preview
      head(epochdata)

<a id="p024-b003"></a>

<!-- p024-b003 -->
HCGSN256                      Coordinates of 256-channel HCGSN sensors

<a id="p024-b004"></a>

<!-- p024-b004 -->
Description
      A file containing the Cartesian coordinates of high-density EEG sensor positions in 3D space on
      the scalp surface and their positions in 2D space. The coordinates belong to 256-channel Hydro-
      Cel Geodesic Sensor Net (GSN) average template montage. This template contains 257 electrode
      positions (including reference).

<a id="p024-b005"></a>

<!-- p024-b005 -->
Usage
      data("HCGSN256")

<a id="p024-b006"></a>

<!-- p024-b006 -->
Format
      A list with following elements:
      D2 A tibble with 3 columns containing x and y coordinates and sensor labels (according to EGI
          GSN Technical Manual) in 2D.
      D3 A tibble with 4 columns containing x, y and z coordinates and sensor labels (according to EGI
          GSN Technical Manual) in 3D. See ’Details’ for more information.
      ROI A factor containing the name of the region to which the corresponding sensor belongs. The
          levels are: "central", "frontal", "occipital", "parietal", "temporal" and "face" for electrodes
          from the face area.

<a id="p024-b007"></a>

<!-- p024-b007 -->
Details
      The axis orientation in the 3D case is as follows:
          • x-axis: left (-) to right (+),
          • y-axis: posterior (-) to anterior (+),
          • z-axis: inferior (-) to superior (+). The reference electrode (Cz) is fixed at point (0, 0, Z),
            where Z is the positive height of Cz. The nasion is fixed at (0, Y, Z). Since both the nasion
            and Cz are always fixed at x = 0, they are assumed to be in the same y plane. The origin is the
            center of the head, defined as the center of a sphere fit to fiducial points above the plane made
            up of the Left Preauricular Point (LPA), the Right Preauricular Point (RPA), and the nasion.
      The 2D coordinates were created by EGI team by positioning the channels to maximize use of
      screen space and to preserve the head shape as much as possible.
      The regions in ROI were determined by an expert from Central European Institute of Technology,
      Masaryk University, Brno, Czech Republic.

<a id="page-025"></a>

## PDF page 25

<a id="p025-b001"></a>

<!-- p025-b001 -->
interactive_surfaceplot                                                                                  25

<a id="p025-b002"></a>

<!-- p025-b002 -->
Source
    Central European Institute of Technology, Masaryk University, Brno, Czech Republic.

<a id="p025-b003"></a>

<!-- p025-b003 -->
References
    EGI Geodesic Sensor Net Technical Manual (2024), https://www.egi.com/knowledge-center

<a id="p025-b004"></a>

<!-- p025-b004 -->
Examples
    # A simple plot of sensor coordinates from HCGSN256 template as points in 2D
    plot(HCGSN256$D2[,1:2], pch = 16, asp = 1)

<a id="p025-b005"></a>

<!-- p025-b005 -->
interactive_surfaceplot
                         Interactive 3D surface topographic plot of EEG signal

<a id="p025-b006"></a>

<!-- p025-b006 -->
Description
    Creates an interactive 3D mesh surface plot of EEG amplitude in one time point using plotly. The
    dense point mesh forms the 2D base, while the interpolated signal amplitude determines the 3D
    elevation and surface color.

<a id="p025-b007"></a>

<!-- p025-b007 -->
Usage
    interactive_surfaceplot(
      data,
      amplitude,
      mesh,
      coords = NULL,
      template = NULL,
      col_range = NULL,
      col_scale = NULL,
      show_sensors = TRUE
    )

<a id="p025-b008"></a>

<!-- p025-b008 -->
Arguments
    data                  A data frame, tibble, or a database table with input data to plot. It must contain
                          at least two columns: sensor with sensor labels, and the column with the EEG
                          amplitude specified in the argument amplitude.
    amplitude             A character string specifying the name of the column from the input data con-
                          taining EEG amplitude values.
    mesh                  A "mesh" object (or a named list with the same structure) containing at least a
                          D2 element with x and y coordinates of a point mesh used for computing the IM
                          model, and a template element specifying the sensor montage. If not defined,
                          the point mesh with default settings from point_mesh function is used.

<a id="page-026"></a>

## PDF page 26

<a id="p026-b001"></a>

<!-- p026-b001 -->
26                                                                           interactive_surfaceplot_curves

<a id="p026-b002"></a>

<!-- p026-b002 -->
coords             Sensor coordinates as a tibble or data frame with named x, y and sensor columns.
                         The sensor labels must match the labels in sensor column in data. If not de-
                         fined, the template specified in mesh$template (or the default "HCGSN256") is
                         used.
      template           The kind of sensor template montage used. Available options are "HCGSN256",
                         "biosemi128", "biosemi256", and "system1005". Default setting is "HCGSN256".
      col_range          A vector with minimum and maximum value of the amplitude used in the colour
                         palette for plotting. If not defined, the range of interpolated signal is used.
      col_scale          Optionally, a colour scale to be utilised for plotting. If not defined, it is computed
                         from col_range.
      show_sensors       Logical. Indicates whether original sensor locations should be visualized as
                         black scatter points on the 3D surface. Default is TRUE.

<a id="p026-b003"></a>

<!-- p026-b003 -->
Value
      A plotly widget object containing the interactive 3D surface plot.
      Additionally, the returned object carries a "diegr_metadata" attribute with metadata such as de-
      tails about the data and plot.

<a id="p026-b004"></a>

<!-- p026-b004 -->
See Also
      interactive_surfaceplot_curves, scalp_plot

<a id="p026-b005"></a>

<!-- p026-b005 -->
Examples
      # Prepare a data structure:
      edata <- pick_data(epochdata, subject_rg = 2, epoch_rg = 1:13, time_rg = 1:10)
      data_base <- baseline_correction(edata, baseline_range = 1:9)
      data_mean <- compute_mean(data_base, amplitude = "signal_base", type = "point", domain = "space")

<a id="p026-b006"></a>

<!-- p026-b006 -->
# Create an interactive 3D surface plot of average signal in time point 10:
      data_mean |>
      dplyr::filter(time == 10) |>
      interactive_surfaceplot(amplitude = "average", col_range = c(-10, 10))

<a id="p026-b007"></a>

<!-- p026-b007 -->
interactive_surfaceplot_curves
                            Interactive 3D surface plot of EEG signal over time

<a id="p026-b008"></a>

<!-- p026-b008 -->
Description
      Creates an interactive 3D surface plot displaying the EEG signal amplitude across different sensors
      and time points. The x-axis represents time, the y-axis represents the sensors, and the z-axis (along
      with surface color) represents the signal amplitude.

<a id="page-027"></a>

## PDF page 27

<a id="p027-b001"></a>

<!-- p027-b001 -->
interactive_surfaceplot_curves                                                                            27

<a id="p027-b002"></a>

<!-- p027-b002 -->
Usage
    interactive_surfaceplot_curves(
      data,
      amplitude,
      sensor_ticks = NULL,
      col_range = NULL,
      col_scale = NULL
    )

<a id="p027-b003"></a>

<!-- p027-b003 -->
Arguments
    data               A data frame, tibble, or a database table containing the EEG data. Required
                       columns are: sensor, time, and the column with the EEG amplitude specified
                       in the argument amplitude.
    amplitude          A character string specifying the name of the column from the input data con-
                       taining EEG amplitude values.
    sensor_ticks       A character vector specifying which sensor labels should be displayed on the
                       y-axis. If NULL, no specific labels are forced, but mismatched names will throw
                       an error if provided.
    col_range          A vector with minimum and maximum value of the amplitude used in the colour
                       palette for plotting. If not defined, the range of interpolated signal is used.
    col_scale          Optionally, a colour scale to be utilised for plotting. If not defined, it is computed
                       from col_range.

<a id="p027-b004"></a>

<!-- p027-b004 -->
Value
    A plotly widget object containing the interactive 3D surface plot.
    Additionally, the returned object carries a "diegr_metadata" attribute with metadata.

<a id="p027-b005"></a>

<!-- p027-b005 -->
See Also
    interactive_surfaceplot, plot_topo_mean

<a id="p027-b006"></a>

<!-- p027-b006 -->
Examples
    # Prepare data: Mean across epochs 1:13 for Subject 2
    edata <- pick_data(epochdata, subject_rg = 2, epoch_rg = 1:13)
    data_base <- baseline_correction(edata, baseline_range = 1:9)
    data_mean <- compute_mean(data_base, amplitude = "signal_base", type = "point", domain = "time")

<a id="p027-b007"></a>

<!-- p027-b007 -->
# Selected sensors to display on the axis
    selected_sensors <- c("E1", "E21", "E41", "E61", "E81", "E101",
     "E121", "E141", "E161", "E181", "E201", "E221")

<a id="p027-b008"></a>

<!-- p027-b008 -->
# Render the interactive plot
    interactive_surfaceplot_curves(data_mean, amplitude = "average", sensor_ticks = selected_sensors)

<a id="page-028"></a>

## PDF page 28

<a id="p028-b001"></a>

<!-- p028-b001 -->
28                                                                                  interactive_waveforms

<a id="p028-b002"></a>

<!-- p028-b002 -->
interactive_waveforms Plot interactive waveform graph

<a id="p028-b003"></a>

<!-- p028-b003 -->
Description
      Function for plotting time series of EEG signal colour-coded by epoch, condition, channel, subject
      or group (depending on selected level parameter) an interactive plotly graph. The function as-
      sumes that the input data have already been filtered to the desired subset according to the level.
      When using the function for plotting the average, there is an option to add a confidence band using
      the CI argument. The output in plotly format enables to easily edit the image layout.

<a id="p028-b004"></a>

<!-- p028-b004 -->
Usage
      interactive_waveforms(
        data,
        amplitude = "signal",
        FS = 250,
        t0 = NULL,
        col_palette,
        level = "epoch",
        avg = TRUE,
        CI = FALSE,
        use_latex = TRUE
      )

<a id="p028-b005"></a>

<!-- p028-b005 -->
Arguments
      data               A data frame, tibble or a database table with input data containing a time column
                         and columns corresponding to the selected amplitude and level parameter (see
                         Details).
      amplitude          A character specifying the name of the column from input data with an EEG
                         amplitude values. Default is "signal".
      FS                 The sampling frequency. Default value is 250 Hz.
      t0                 Index of the zero time point, i.e. point, where 0 ms should be marked (most
                         often time of the stimulus or time of the response).
      col_palette        Optionally, a colour palette for plotting lines. If missing, the rainbow palette is
                         used. The expected length is the same (or higher) as the number of unique levels
                         (e.g. number of epochs for level = "epoch").
      level              A character specifying the level of the time curves. The possible values are
                         "epoch" (default option), "condition", "sensor", "subject" and "group".
                         See details for more information.
      avg                A logical value indicating, if the average black curve should be plotted. Default
                         is TRUE.
      CI                 A logical value indicating, if the confidence ribbon should be plotted. Default is
                         FALSE. See Details for more information.

<a id="page-029"></a>

## PDF page 29

<a id="p029-b001"></a>

<!-- p029-b001 -->
make_triangulation                                                                                    29

<a id="p029-b002"></a>

<!-- p029-b002 -->
use_latex          A logical value indicating whether to use LaTeX formatting for the y-axis title.
                       The default is TRUE.

<a id="p029-b003"></a>

<!-- p029-b003 -->
Details
    The input data frame or database table must contain column time (a column with time point num-
    bers) and a column with the EEG amplitude (or average amplitude) specified in the argument
    amplitude. It must also contain at least one of the optional columns (according to the level
    parameter - for "sensor" level the column sensor is required etc.): group - a column with group
    identifiers, subject - a column with subject IDs, sensor - a column with sensor labels, epoch - a
    column with epoch numbers.
    Note: The average signals must be pre-aggregated before plotting at higher grouping levels, for
    example sensor level assumes a mean sensor signal in the amplitude column (the input data for
    individual epochs together with sensor level setting will result in a mess output).
    Plotting confidence ribbon: To plot the confidence bands around the average lines (CI = TRUE), the
    input data must include the ci_up and ci_low columns (as in the output tibble from compute_mean
    function).

<a id="p029-b004"></a>

<!-- p029-b004 -->
Value
    A plotly object showing an interactive time series of the signal according to the chosen level.
    Additionally, the returned object carries a "diegr_metadata" attribute with metadata such as plot
    and data details.

<a id="p029-b005"></a>

<!-- p029-b005 -->
Examples
    # 1) Plot epoch waveforms with average curve for subject 1 and electrode "E65"
    # with 250 sampling frequency rate (default) and 10 as zero time point
    epochdata |>
    pick_data(subject_rg = 1, sensor_rg = "E65") |>
    interactive_waveforms(amplitude = "signal", t0 = 10, level = "epoch")

<a id="p029-b006"></a>

<!-- p029-b006 -->
# 2) Plot sensor level waveforms with confidence bands for subject 1 and electrodes "E65" and "E182"
    # a) preparing data
    sendata <- epochdata |>
    pick_data(subject_rg = 1, sensor_rg = c("E65", "E182")) |>
    compute_mean(amplitude = "signal", domain = "time", level = "epoch")
    # b) plot the waveforms without the average
    interactive_waveforms(sendata, amplitude = "average", t0 = 10,
    level = "sensor", avg = FALSE, CI = TRUE)

<a id="p029-b007"></a>

<!-- p029-b007 -->
make_triangulation          Make triangulation of 2D point mesh

<a id="p029-b008"></a>

<!-- p029-b008 -->
Description
    Function for creating Delaunay type-I triangulation (see Schumaker 2007) with consistent oriented
    edges adapted for a regular point mesh created by point_mesh function. See Details for more
    information.

<a id="page-030"></a>

## PDF page 30

<a id="p030-b001"></a>

<!-- p030-b001 -->
30                                                                                     make_triangulation

<a id="p030-b002"></a>

<!-- p030-b002 -->
Usage
     make_triangulation(mesh)

<a id="p030-b003"></a>

<!-- p030-b003 -->
Arguments
     mesh                A data frame or tibble with named columns: x, y (required) and index (op-
                         tionally, if missing, it will be generated internally). It should optimally be a D2
                         element of a "mesh" object or a list with the same structure of uniformly spaced
                         grid.

<a id="p030-b004"></a>

<!-- p030-b004 -->
Details
     Please note that the input coordinates must be unique. The function execution will automatically
     stop if duplicate sensor locations are found.
     The type-I Delaunay triangulation is a triangulation obtained by drawing in the north-east diagonals
     in all subrectangles of the triangulated area. Due to the regularity of the input mesh (in the sense of
     distances between mesh points), a simplified procedure is used: The triangulation is created within
     the individual strips and then bound together. The order of the vertices is chosen to maintain a
     consistent orientation of the triangles (for more details see Schneider 2003).
     If the input mesh has not regular grid spacing, the result triangulation may not be meaningful and
     will not meet the Delaunay triangulation criteria.

<a id="p030-b005"></a>

<!-- p030-b005 -->
Value
     A three column matrix with indices of the vertices of the triangles. Each row represents one triangle,
     defined by three vertex indices pointing to rows in the input mesh.

<a id="p030-b006"></a>

<!-- p030-b006 -->
References
     Lai M-J, Schumaker LL. Spline functions on triangulations. Cambridge University Press; 2007.
     Schneider PJ, Eberly DH. Geometric Tools for Computer Graphics. The Morgan Kaufmann Series
     in Computer Graphics. San Francisco: Morgan Kaufmann, 2003.

<a id="p030-b007"></a>

<!-- p030-b007 -->
Examples
     # a) Create small mesh for triangulation example
     # using 204 electrodes from epochdata
     M <- point_mesh(n = 500, template = "HCGSN256",
     sensor_select = unique(epochdata$sensor))

<a id="p030-b008"></a>

<!-- p030-b008 -->
# b) Make triangulation on this mesh
     TRI <- make_triangulation(M$D2)
     head(TRI)

<a id="p030-b009"></a>

<!-- p030-b009 -->
# c) plot triangulation in 2D
     # prepare empty plot
     plot(M$D2, type = "n", main = "Triangulation plot",
     xlab = "", ylab = "", asp = 1, axes = FALSE)
     # create a structure for plotting

<a id="page-031"></a>

## PDF page 31

<a id="p031-b001"></a>

<!-- p031-b001 -->
outliers_epoch                                                                                       31

<a id="p031-b002"></a>

<!-- p031-b002 -->
x0 <- c()
    y0 <- c()
    x1 <- c()
    y1 <- c()
    for (i in 1:nrow(TRI)) {
      v_indices <- TRI[i, ]
      v_coords <- M$D2[v_indices, ]
      x0 <- c(x0, v_coords[1, "x"], v_coords[2, "x"], v_coords[3, "x"])
      y0 <- c(y0, v_coords[1, "y"], v_coords[2, "y"], v_coords[3, "y"])
      x1 <- c(x1, v_coords[2, "x"], v_coords[3, "x"], v_coords[1, "x"])
      y1 <- c(y1, v_coords[2, "y"], v_coords[3, "y"], v_coords[1, "y"])
     }
    # plot triangulation using segments
    segments(x0, y0, x1, y1)

<a id="p031-b003"></a>

<!-- p031-b003 -->
## Note: this code opens a rgl 3D viewer
    # d) Plot the result triangulation as 3D wire model using rgl
     rgl::open3d()
     rgl::wire3d(rgl::mesh3d(M$D3$x, M$D3$y, M$D3$z, triangles = t(TRI)))

<a id="p031-b004"></a>

<!-- p031-b004 -->
outliers_epoch              Select outlier epochs

<a id="p031-b005"></a>

<!-- p031-b005 -->
Description

<a id="p031-b006"></a>

<!-- p031-b006 -->
Function identifies epochs with outlier values in a numeric EEG amplitude variable in chosen time
    points. Outliers are detected separately at each time point within the groups present in the data.
    The function then summarizes how many times each epoch was marked as an outlier across all time
    points.
    Epochs are marked as outliers based on one of the following criteria: interquartile range criterion,
    percentile approach or Hampel filter method.

<a id="p031-b007"></a>

<!-- p031-b007 -->
Usage

<a id="p031-b008"></a>

<!-- p031-b008 -->
outliers_epoch(
      data,
      amplitude = "signal",
      time = NULL,
      method = c("iqr", "percentile", "hampel"),
      k_iqr = 1.5,
      k_mad = 3,
      p = 0.975,
      print_tab = TRUE
    )

<a id="page-032"></a>

## PDF page 32

<a id="p032-b001"></a>

<!-- p032-b001 -->
32                                                                                         outliers_epoch

<a id="p032-b002"></a>

<!-- p032-b002 -->
Arguments

<a id="p032-b003"></a>

<!-- p032-b003 -->
data                A data frame, tibble or a database table with input data, required columns: time,
                         epoch and the column with EEG amplitude specified by amplitude parameter.
                         Optional columns: group, subject, sensor, condition.
     amplitude           A character specifying the name of the column from input data with an EEG
                         amplitude values. Default is "signal".
     time                A vector with time range for outliers detection. If not defined, the outliers are
                         searched for all time points in the dataset.
     method              A character denoting the method used for outlier detection. The options are:
                         "iqr" for interquartile range (IQR) criterion (default value), "percentile" for
                         percentile method and "hampel" for Hampel filter method. See details for fur-
                         ther information about methods.
     k_iqr               A positive numeric value denoting the scaling factor used in the IQR criterion.
                         Default value is k_iqr = 1.5.
     k_mad               A positive numeric value denoting the scaling factor used in the Hampel filter
                         method. Default value is k_mad = 3.
     p                   A probability value from [0,1] interval determining percentile to the percentile
                         method (according to probs argument in quantile() function). The default
                         value is set to 0.975 for the interval formed by the 2.5 and 97.5 percentiles.
     print_tab           Logical. Indicates, whether result table should be printed in console. Default is
                         TRUE.

<a id="p032-b004"></a>

<!-- p032-b004 -->
Details

<a id="p032-b005"></a>

<!-- p032-b005 -->
The input data frame or database table must contain at least following columns: epoch - a col-
     umn with epoch numbers/labels, time - a column with time point numbers, signal (or other name
     specified in amplitude parameter) - a column with measured EEG signal values.
     The outlier detection method is chosen through method argument. The possibilities are

<a id="p032-b006"></a>

<!-- p032-b006 -->
• iqr: The interquartile range criterion, values outside the interval [lower quartile - k_iqr
            * IQR, upper quartile + k_iqr * IQR] are considered as outliers. IQR denotes interquartile
            range and k_iqr the scaling factor.
          • percentile: The percentile method, values outside the interval defined by the chosen per-
            centiles are considered as outliers. Note: chosing small p leads to marking too many (or all)
            values.
          • hampel: The Hampel filter method, values outside the interval [median - k_mad * MAD, median
            + k_mad * MAD] are considered as outliers. MAD denotes median absolute deviation and
            k_mad the scaling factor. Each of the above methods operates independently per time point,
            not globally across time.

<a id="p032-b007"></a>

<!-- p032-b007 -->
Note: For large datasets, the calculation can be time-consuming. It is recommended to pre-filter or
     subset the data before using this function to reduce computation time.

<a id="page-033"></a>

## PDF page 33

<a id="p033-b001"></a>

<!-- p033-b001 -->
pick_data                                                                                              33

<a id="p033-b002"></a>

<!-- p033-b002 -->
Value

<a id="p033-b003"></a>

<!-- p033-b003 -->
A list with following components:

<a id="p033-b004"></a>

<!-- p033-b004 -->
epoch_table        A data frame with epoch ID and the number of time points in which the epoch
                       was evaluated as outlier. (Only epochs with occurrence of outliers in at least one
                       time point are included.)
    outliers_data      A data frame with subset of data corresponding to the outliers found. (The full
                       record for each flagged point from epoch_table.)

<a id="p033-b005"></a>

<!-- p033-b005 -->
With the setting print_tab = TRUE, the epoch_table is also printed to the console.
    Additionally, the returned object carries a "diegr_metadata" attribute with metadata such as
    method used for outlier detection.

<a id="p033-b006"></a>

<!-- p033-b006 -->
Examples

<a id="p033-b007"></a>

<!-- p033-b007 -->
# 1. Outlier epoch detection for subject 2, electrode E45 for the whole time range with IQR method
    epochdata |>
    pick_data(subject_rg = 2, sensor_rg = "E45") |>
    outliers_epoch(amplitude = "signal")
    ## From the result table we see that epochs 14 and 15 were marked as outliers in 50 cases out of 50

<a id="p033-b008"></a>

<!-- p033-b008 -->
# 2. Outlier epoch detection for both subjects, electrode E45 for the whole time range
    # using percentile method with 1 and 99 percentiles
    outdata <- epochdata |>
    pick_data(sensor_rg = "E45") |>
    outliers_epoch(amplitude = "signal", method = "percentile", p = 0.99)
    # see head of outliers data
    head(outdata$outliers_data)

<a id="p033-b009"></a>

<!-- p033-b009 -->
# 3. Outlier epoch detection for subject 2, electrode E45 for the whole time range
    # using Hampel filter method and scaling factor = 4
    epochdata |>
    pick_data(subject_rg = 2, sensor_rg = "E45") |>
    outliers_epoch(amplitude = "signal", method = "hampel", k_mad = 4)

<a id="p033-b010"></a>

<!-- p033-b010 -->
pick_data                    Subsets EEG data by group, subject, sensor, time, experimental condi-
                               tion or epoch

<a id="p033-b011"></a>

<!-- p033-b011 -->
Description

<a id="p033-b012"></a>

<!-- p033-b012 -->
Filters an input dataset by optional constraints on group, subject, sensor, time, condition and epoch.
    Filters are combined with logical AND, and exact value matching (%in%) is used.

<a id="page-034"></a>

## PDF page 34

<a id="p034-b001"></a>

<!-- p034-b001 -->
34                                                                                           pick_data

<a id="p034-b002"></a>

<!-- p034-b002 -->
Usage

<a id="p034-b003"></a>

<!-- p034-b003 -->
pick_data(
       data,
       group_rg = NULL,
       subject_rg = NULL,
       sensor_rg = NULL,
       condition_rg = NULL,
       epoch_rg = NULL,
       time_rg = NULL
     )

<a id="p034-b004"></a>

<!-- p034-b004 -->
Arguments

<a id="p034-b005"></a>

<!-- p034-b005 -->
data               A data frame, tibble or database table with input data. Required columns depend
                        on the further parameters: setting subject_rg requires subject column etc.
     group_rg           Optional vector of group identifiers to keep (character or numeric, matching
                        data$group). If NULL (default), no filtering is applied based on group.
     subject_rg         Optional vector of subject identifiers to keep (character or numeric, matching
                        data$subject). If NULL (default), no filtering is applied based on subject.
     sensor_rg          Optional vector of sensor identifiers to keep (character or numeric, matching
                        data$sensor). If NULL (default), no filtering is applied based on sensor.
     condition_rg       Optional vector of experimental condition identifiers to keep (character or nu-
                        meric, matching data$condition). If NULL (default), no filtering is applied
                        based on condition.
     epoch_rg           Optional vector of epoch identifiers to keep (character or numeric, matching
                        data$epoch). If NULL (default), no filtering is applied based on epoch.
     time_rg            Optional vector of time points to keep (numeric, matching data$time). If NULL
                        (default), no filtering is applied based on time.

<a id="p034-b006"></a>

<!-- p034-b006 -->
Details

<a id="p034-b007"></a>

<!-- p034-b007 -->
All filters are combined conjunctively (AND). Matching uses membership (%in%) with case-sensitive
     comparison for character columns. On database backends, very long *_rg vectors may not translate
     efficiently; consider pre-filtering or semi-joins.

<a id="p034-b008"></a>

<!-- p034-b008 -->
Value

<a id="p034-b009"></a>

<!-- p034-b009 -->
An object of the same class as data with rows filtered by the provided criteria; columns are un-
     changed. If all filters are NULL, the input is returned unmodified. If no rows match, the function
     ends with error message.

<a id="p034-b010"></a>

<!-- p034-b010 -->
See Also

<a id="p034-b011"></a>

<!-- p034-b011 -->
compute_mean, baseline_correction, pick_region

<a id="page-035"></a>

## PDF page 35

<a id="p035-b001"></a>

<!-- p035-b001 -->
pick_region                                                                                         35

<a id="p035-b002"></a>

<!-- p035-b002 -->
Examples
    # Filtering epochs 1:5 and time points 1:10 for all subjects and sensor "E45"
    data_subset <- pick_data(epochdata, sensor_rg = "E45",
     time_rg = 1:10, epoch_rg = 1:5)
    head(data_subset)

<a id="p035-b003"></a>

<!-- p035-b003 -->
# Setting parameters outside the input data range (there is no subject 6 in epochdata)
    # results in an error message
    try(
    pick_data(epochdata, subject_rg = 6,
     time_rg = 1:10, epoch_rg = 1:5)
     )

<a id="p035-b004"></a>

<!-- p035-b004 -->
pick_region                 Choose region of interest

<a id="p035-b005"></a>

<!-- p035-b005 -->
Description
    The function extracts the selected regions or hemisphere (or a combination of both) from the speci-
    fied sensor coordinates.

<a id="p035-b006"></a>

<!-- p035-b006 -->
Usage
    pick_region(
      coords = NULL,
      template = NULL,
      hemisphere = c("left", "right", "midline"),
      region = c("frontal", "central", "parietal", "occipital", "temporal", "face"),
      ROI = NULL,
      tol = 1e-06
    )

<a id="p035-b007"></a>

<!-- p035-b007 -->
Arguments
    coords             A data frame, matrix or named tibble with numeric columns of "x" and "y"
                       sensor coordinates. If not defined, the default template coordinates are used.
    template           The kind of sensor template montage used. Available options are "HCGSN256",
                       "biosemi128", "biosemi256", and "system1005". Default setting is "HCGSN256".
    hemisphere         A character vector denoting hemisphere to choose. Possible values: "left",
                       "right", "midline" or any combination of them. If not defined, both hemi-
                       spheres with midline are chosen.
    region             A character vector denoting region to choose. Possible values: "frontal",
                       "central", "parietal", "occipital", "temporal", "face" or any combi-
                       nation of them. If not defined, all regions are chosen.

<a id="page-036"></a>

## PDF page 36

<a id="p036-b001"></a>

<!-- p036-b001 -->
36                                                                                       plot_point_mesh

<a id="p036-b002"></a>

<!-- p036-b002 -->
ROI                A character or factor vector with labels of regions, aligned row-wise with coords.
                         If not defined, the predefined vector (according to HCGSN256 template deter-
                         mined by an expert from Central European Institute of Technology, Masaryk
                         University, Brno, Czech Republic) is used.
      tol                A numeric value indicating tolerance for midline selection. (Values of x fulfill-
                         ing abs(x) < tol are denoted as midline.) Default value is 1e-6.

<a id="p036-b003"></a>

<!-- p036-b003 -->
Details
      For the correct selection of the hemisphere with own coordinates, it is necessary that the 2D layout
      is oriented with the nose up and that the midline electrodes should have a zero x-coordinate (or
      approximately zero within tolerance). Otherwise, the results will not match reality.
      Notes: The option hemisphere = "left" (respectively hemisphere = "right") means only the
      left hemisphere without the midline. If you want to include midline as well, use hemisphere =
      c("left", "midline") (respectively hemisphere = c("right", "midline")).
      The matching of region/hemisphere is exact and the function will stop with an error if no coordinates
      match the requested region and hemisphere combination.

<a id="p036-b004"></a>

<!-- p036-b004 -->
Value
      A tibble or data frame subset of coords filtered by the selected region and hemisphere criteria.

<a id="p036-b005"></a>

<!-- p036-b005 -->
See Also
      point_mesh

<a id="p036-b006"></a>

<!-- p036-b006 -->
Examples
      # Choosing regions from HCGSN256 template
      # a) temporal region in left hemisphere
      pick_region(hemisphere = "left", region = "temporal")
      # b) frontal and central region
      region_fc <- pick_region(region = c("frontal", "central"))
      head(region_fc)
      # c) left hemisphere including midline
      hemi_lm <- pick_region(hemisphere = c("left", "midline"))
      head(hemi_lm)
      # plot the result in c)
      plot(hemi_lm$x, hemi_lm$y, pch = 16, asp = 1)

<a id="p036-b007"></a>

<!-- p036-b007 -->
plot_point_mesh             Plot point mesh

<a id="p036-b008"></a>

<!-- p036-b008 -->
Description
      Plots a mesh of points (typically from point_mesh) as either a 2D ggplot or 3D rgl plot depending
      on the requested dimension.

<a id="page-037"></a>

## PDF page 37

<a id="p037-b001"></a>

<!-- p037-b001 -->
plot_point_mesh                                                                                    37

<a id="p037-b002"></a>

<!-- p037-b002 -->
Usage
    plot_point_mesh(
      mesh,
      sensors = TRUE,
      label_sensors = FALSE,
      sensor_select = NULL,
      names_vec = NULL,
      col = "gray",
      cex = 0.4,
      col_sensors = "green",
      own_coordinates = NULL,
      plot_dim = NULL
    )

<a id="p037-b003"></a>

<!-- p037-b003 -->
Arguments
    mesh              An object of class "mesh" (typically returned by the point_mesh function), or
                      another list with the same structure. It must contain dense mesh coordinates in
                      D2 and/or D3 and a template string indicating the sensor montage used.
    sensors           A logical value indicating whether the sensor locations should also be plotted
                      (default value is TRUE).
    label_sensors     A logical value indicating whether the sensor labels should also be plotted (de-
                      fault value is FALSE).
    sensor_select     Optionally, a vector with sensor labels selected from the template during a mesh
                      building. It must be the same as the vector used to create the mesh that the
                      function is supposed to draw, otherwise the final plot will be incorrect.
    names_vec         A character vector of labels matching rows in own_coordinates. The argument
                      is required when using own_coordinates together with setting label_sensors
                      = TRUE, otherwise is optional.
    col               The colour of mesh points (default colour is gray).
    cex               The cex (size) argument for points of the mesh.
    col_sensors       The colour of sensor locations points (default colour is green).
    own_coordinates
                      A data frame or tibble with coordinates of the sensor locations (matching the di-
                      mensionality of the mesh and containing appropriate coordinate columns). If the
                      value is NULL and sensors is set to TRUE, the template specified in mesh$template
                      is used automatically.
    plot_dim          A numeric value (2 or 3) specifying which dimension of the mesh to plot. If NULL
                      (default), the function automatically plots 3D if available in the mesh object,
                      otherwise it falls back to 2D.

<a id="p037-b004"></a>

<!-- p037-b004 -->
Details
    Please follow the instructions below when entering own_coordinates:

<a id="page-038"></a>

## PDF page 38

<a id="p038-b001"></a>

<!-- p038-b001 -->
38                                                                                     plot_point_mesh

<a id="p038-b002"></a>

<!-- p038-b002 -->
The output 2D plot is designed with frontal part of the brain above and occipital part of the brain
     bottom. The orientation of own_coordinates should be consistent with this. In other case the
     results could be distorted.
     For displaying 3D rgl plot, the own_coordinates must contain the D3 part with x, y and z coordi-
     nates of the sensors, otherwise the function does not work correctly.
     The order of elements in names_vec must be consistent with elements of own_coordinates.
     When both names_vec and own_coordinates are provided, it is essential that the length of names_vec
     matches the number of rows in own_coordinates, otherwise the names are not plotted (despite the
     setting label_sensors = TRUE).

<a id="p038-b003"></a>

<!-- p038-b003 -->
Value

<a id="p038-b004"></a>

<!-- p038-b004 -->
A ggplot object when plot_dim = 2. Additionally, the returned ggplot object carries a "diegr_metadata"
     attribute with metadata such as the actual number of generated mesh points or the template used.
     For plot_dim = 3, the mesh and sensors are drawn in the active rgl device.

<a id="p038-b005"></a>

<!-- p038-b005 -->
See Also

<a id="p038-b006"></a>

<!-- p038-b006 -->
point_mesh

<a id="p038-b007"></a>

<!-- p038-b007 -->
Examples

<a id="p038-b008"></a>

<!-- p038-b008 -->
# 2D polygon point mesh with all sensors from the BioSemi 128 template
     # Note: for nice plot we recommend set par(mar = c(0,0,0,0))
     M <- point_mesh(n = 4000, template = "biosemi128")
     plot_point_mesh(M, plot_dim = 2)

<a id="p038-b009"></a>

<!-- p038-b009 -->
## Note: the example opens a rgl 3D viewer
     # Plotting 3D polygon point mesh with default settings
     rgl::open3d()
     plot_point_mesh(M, plot_dim = 3)

<a id="p038-b010"></a>

<!-- p038-b010 -->
# Plotting 2D circle point mesh with sensors from epochdata as orange points
     sensors <- unique(epochdata$sensor)
     M <- point_mesh(dim = 2, n = 4000, template = "HCGSN256",
     sensor_select = sensors, type = "circle")
     plot_point_mesh(M, sensor_select = sensors, col_sensors = "orange")

<a id="p038-b011"></a>

<!-- p038-b011 -->
# Plotting the same mesh with marking only midline electrodes
     midline <- HCGSN256$D2[c(8, 15, 21, 26, 78, 86, 95, 111, 117, 127, 136, 204),]
     names_vec <- HCGSN256$D2$sensor[c(8, 15, 21, 26, 78, 86, 95, 111, 117, 127, 136, 204)]
     plot_point_mesh(M, label_sensors = TRUE, names_vec = names_vec, own_coordinates = midline)

<a id="page-039"></a>

## PDF page 39

<a id="p039-b001"></a>

<!-- p039-b001 -->
plot_time_mean                                                                                     39

<a id="p039-b002"></a>

<!-- p039-b002 -->
plot_time_mean              Plot time curve of average EEG signal with confidence interval

<a id="p039-b003"></a>

<!-- p039-b003 -->
Description
    Plot a time course of the average EEG signal amplitude with pointwise confidence intervals (CIs),
    colour-coded by a user-defined grouping variable such as experimental condition, subject or group.
    If the condition_column is NULL, all observations are treated as a single condition.

<a id="p039-b004"></a>

<!-- p039-b004 -->
Usage
    plot_time_mean(
      data,
      condition_column = NULL,
      FS = 250,
      t0 = 1,
      transp = 0.4,
      y_limits = NULL,
      label_0ms = "stimulus",
      label_offset = c(0, 0),
      legend_title = "Condition"
    )

<a id="p039-b005"></a>

<!-- p039-b005 -->
Arguments
    data           A data frame, tibble or a database table with input data to plot. It should be an
                   output from compute_mean function or an object with the same structure, con-
                   taining columns: time with labels of time points and average, ci_low, ci_up
                   with values of average signal and lower and upper CI bounds.
    condition_column
                   Character string specifying the name of the column used to define conditions for
                   plotting. If NULL, all observations are treated as a single condition.
    FS             The sampling frequency. Default value is 250 Hz.
    t0             Index of the zero time point, i.e. point, where 0 ms should be marked (most
                   often time of the stimulus or time of the response).
    transp         A numeric value between 0 and 1 controlling the transparency of the confidence
                   ribbon (corresponding to alpha parameter in geom_ribbon function).
    y_limits       A numeric vector of length two, specifying the minimum and maximum y-axis
                   limits. Defaults to NULLfor plot limits determined according to input data.
    label_0ms      Character string for the annotation label at the 0ms mark. Default is "stimulus".
    label_offset   A numeric vector of length two to offset the stimulus label. The first value
                   indicates a horizontal shift, the second a vertical one. Default is c(0,0) for no
                   shift.
    legend_title   Character string specifying the legend title shown in the plot. Default is "Condition".
                   For all observations treated as a single condition (condition_column = NULL)
                   is plotted no legend.

<a id="page-040"></a>

## PDF page 40

<a id="p040-b001"></a>

<!-- p040-b001 -->
40                                                                                        plot_time_mean

<a id="p040-b002"></a>

<!-- p040-b002 -->
Details

<a id="p040-b003"></a>

<!-- p040-b003 -->
The output in the form of a ggplot object allows to easily edit the result image properties.

<a id="p040-b004"></a>

<!-- p040-b004 -->
Value

<a id="p040-b005"></a>

<!-- p040-b005 -->
A ggplot object showing the time course of the average EEG signal with pointwise confidence
     intervals.
     Additionally, the returned object carries a "diegr_metadata" attribute with metadata such as plot
     and data details.

<a id="p040-b006"></a>

<!-- p040-b006 -->
See Also

<a id="p040-b007"></a>

<!-- p040-b007 -->
compute_mean, interactive version of time plot: interactive_waveforms

<a id="p040-b008"></a>

<!-- p040-b008 -->
Examples

<a id="p040-b009"></a>

<!-- p040-b009 -->
# Plot average signal with CI bounds from the sensor E65 excluding outlier epochs (14 and 15)
     # for subject 2 - part b) and for the both subjects treated as conditions - part c)

<a id="p040-b010"></a>

<!-- p040-b010 -->
# a) preparing data
     # a1) extract required data
     edata <- pick_data(epochdata, sensor_rg = c("E65"), epoch_rg = 1:13)
     # a2) baseline correction
     data_base <- baseline_correction(edata, baseline_range = 1:9)
     # a3) average computing
     data_mean <- compute_mean(data_base, amplitude = "signal_base", type = "point")

<a id="p040-b011"></a>

<!-- p040-b011 -->
# b) filter subject 2 and plot the average line with default settings
     # (the whole dataset treated as one condition, no legend plotted)
     data_mean2 <- data_mean |>
     dplyr::filter(subject == 2) # or use pick_data(data_mean, subject_rg = 2)
     plot_time_mean(data = data_mean2, t0 = 10)

<a id="p040-b012"></a>

<!-- p040-b012 -->
# c) plot the time course by subject (treated as a condition)
     plot_time_mean(data = data_mean, condition_column = "subject", t0 = 10, legend_title = "Subject")

<a id="p040-b013"></a>

<!-- p040-b013 -->
# Plot average signal with CI bounds for subject 1 from three chosen sensors
     # preparing data
     edata <- pick_data(epochdata, subject_rg = 1, sensor_rg = c("E5", "E35" ,"E65"),
                      epoch_rg = 1:13)
     data_base <- baseline_correction(edata, baseline_range = 1:9)
     data_mean <- compute_mean(data_base, amplitude = "signal_base", type = "point")
     # plot the time course by sensor (channel)
     plot_time_mean(data = data_mean, condition_column = "sensor", t0 = 10, legend_title = "Channel")

<a id="page-041"></a>

## PDF page 41

<a id="p041-b001"></a>

<!-- p041-b001 -->
plot_topo_mean                                                                                       41

<a id="p041-b002"></a>

<!-- p041-b002 -->
plot_topo_mean              Plot topographic map of average EEG signal

<a id="p041-b003"></a>

<!-- p041-b003 -->
Description
    Plot a topographic circle or polygon map of the average EEG signal amplitude and its lower and
    upper confidence interval bounds using topographic colour scale. The thin-plate spline interpolation
    model IM: R2 → R is used for signal interpolation between the sensor locations. The output in the
    form of a ggplot object allows to easily edit the result image properties.

<a id="p041-b004"></a>

<!-- p041-b004 -->
Usage
    plot_topo_mean(
      data,
      mesh,
      coords = NULL,
      template = NULL,
      col_range = NULL,
      col_scale = NULL,
      contour = FALSE,
      show_legend = TRUE,
      label_sensors = FALSE
    )

<a id="p041-b005"></a>

<!-- p041-b005 -->
Arguments
    data               A data frame, tibble or a database table with input data to plot. It should be
                       an output from compute_mean function or an object with the same structure,
                       containing columns: sensor with sensor labels and average, ci_low, ci_up
                       with values of average signal and its lower and upper CI bounds in one time
                       point (or precomputed average of multiple time points).
    mesh               A "mesh" object (or a named list with the same structure) containing at least a
                       D2 element with x and y coordinates of a point mesh used for computing the IM
                       model, and a template element specifying the sensor montage. If not defined,
                       the point mesh with default settings from point_mesh function is used.
    coords             Sensor coordinates as a tibble or data frame with named x, y and sensor columns.
                       The sensor labels must match the labels in sensor column in data. If not de-
                       fined, the template specified in mesh$template (or the default "HCGSN256") is
                       used.
    template           The kind of sensor template montage used. Available options are "HCGSN256",
                       "biosemi128", "biosemi256", and "system1005". Default setting is "HCGSN256".
    col_range          A vector with minimum and maximum value of the amplitude used in the colour
                       palette for plotting. If not defined, the range of input data (average and CI
                       bounds) is used.

<a id="page-042"></a>

## PDF page 42

<a id="p042-b001"></a>

<!-- p042-b001 -->
42                                                                                    plot_topo_mean

<a id="p042-b002"></a>

<!-- p042-b002 -->
col_scale         Optionally, a colour scale to be utilised for plotting. It should be a list with
                       colors and breaks components (usually created via create_scale). If not
                       defined, it is computed from col_range.
     contour           Logical. Indicates, whether contours should be plotted in the graph. Default
                       value is FALSE.
     show_legend       Logical. Indicates, whether legend should be displayed below the graph. Default
                       value is TRUE.
     label_sensors     A logical value indicating whether the sensor labels should also be plotted. De-
                       fault value is FALSE.

<a id="p042-b003"></a>

<!-- p042-b003 -->
Details
     The spline interpolation is done independently for each CI bound and average.
     Notes: If a mesh object is provided, its internal template name (mesh$template) overrides the
     template argument to ensure spatial consistency. When custom coords are provided, they are
     always used for plotting the sensor locations. The template parameter (or mesh$template) is then
     used only for generating the background mesh if it is not provided.

<a id="p042-b004"></a>

<!-- p042-b004 -->
Value
     A ggplot object showing the static topographic map of the signal divided into three panels: CI
     lower, mean, CI upper.
     Additionally, the returned object carries a "diegr_metadata" attribute with metadata such as de-
     tails about the mesh used for plotting.

<a id="p042-b005"></a>

<!-- p042-b005 -->
See Also
     topo_plot, compute_mean, animated version: animate_topo_mean

<a id="p042-b006"></a>

<!-- p042-b006 -->
Examples
     # Plot average topographic map with CI bounds of signal for subject 2 from the time point 10
     # (the time of the stimulus) excluding outlier epochs 14 and 15

<a id="p042-b007"></a>

<!-- p042-b007 -->
# a) preparing data
     # a1) extract required data
     edata <- pick_data(epochdata, subject_rg = 2, epoch_rg = 1:13, time_rg = 1:10)
     # a2) baseline correction (needed for suitable topographic map)
     data_base <- baseline_correction(edata, baseline_range = 1:9)
     # a3) average computing
     data_mean <- data_base |>
     dplyr::filter(time == 10) |>
     compute_mean(amplitude = "signal_base", type = "jack", domain = "space")
     # a4) prepare a mesh for plotting
     M <- point_mesh(dimension = 2, n = 3000, template = "HCGSN256",
     sensor_select = unique(epochdata$sensor))

<a id="p042-b008"></a>

<!-- p042-b008 -->
# b) plot the topographic map with legend
     plot_topo_mean(data = data_mean, mesh = M, template = "HCGSN256", show_legend = TRUE)

<a id="page-043"></a>

## PDF page 43

<a id="p043-b001"></a>

<!-- p043-b001 -->
point_mesh                                                                                              43

<a id="p043-b002"></a>

<!-- p043-b002 -->
point_mesh                  Create regular mesh of points

<a id="p043-b003"></a>

<!-- p043-b003 -->
Description
    Function creates an object of class "mesh", which is a list of data frames with coordinates of a
    regular (in the sense of the equidistant distance between mesh nodes) mesh of points on the space
    defined by sensor coordinates. Circular or polygonal shape of the result mesh is available. For the
    equivalence between 2D and 3D mesh and the possibility to compare models in different dimen-
    sions, the thin-plate spline interpolation model R2 → R3 is used for creating 3D mesh.

<a id="p043-b004"></a>

<!-- p043-b004 -->
Usage
    point_mesh(
      dimension = c(2, 3),
      n = 10000,
      r,
      template = NULL,
      sensor_select = NULL,
      own_coordinates = NULL,
      type = "polygon"
    )

<a id="p043-b005"></a>

<!-- p043-b005 -->
Arguments
    dimension          A number (or a vector) indicating a dimension of the mesh: 2 for two dimen-
                       sional, 3 for three dimensional mesh and c(2,3) for both of them in one output
                       (default setting).
    n                  Optionally, the required number of mesh points. Default setting is n = 10 000.
    r                  Optionally, desired radius of a circular mesh. If not defined, it is computed from
                       the convex hull of sensor locations, based on maximum Euclidean distance from
                       centroid.
    template           A character denoting the sensor template montage used. Available options are
                       "HCGSN256" (256-channel HydroCel Geodesic Sensor Net v.1.0), "biosemi128"
                       (128-channel BioSemi), "biosemi256" (256-channel BioSemi), and "system1005"
                       (the 10-05 system).
    sensor_select      Optionally, a vector with sensor labels to select from the template. If not defined,
                       all sensors from the template montage are used to create a mesh.
    own_coordinates
                       Optionally, a list with own sensor coordinates for mesh building. See Details for
                       more information.
    type               A character indicating the shape of the mesh with 2 possible values: "circle"
                       for circular mesh, "polygon" for irregular polygon shape with boundaries de-
                       fined by sensor locations (default).

<a id="page-044"></a>

## PDF page 44

<a id="p044-b001"></a>

<!-- p044-b001 -->
44                                                                                           point_mesh

<a id="p044-b002"></a>

<!-- p044-b002 -->
Details
     Please note that the input coordinates must be unique. The function execution will automatically
     stop if duplicate sensor locations are found.
     If neither template nor own_coordinates is specified, the "HCGSN256" template is used by default
     to create the mesh.
     For the provided built-in templates, the (0,0) point of the resulting 2D mesh generally corresponds
     to the vertex of the head model (e.g., the Cz electrode).
     The number n for controlling the mesh density is only an approximate value. The final number
     of mesh nodes depends on the exact shape of the polygon (created as a convex hull of the sensor
     locations), and is only close to, not exactly equal to, the number n.
     The own_coordinates enables computing a mesh from user’s own sensor locations. The input
     must be a list containing following elements:
          • D2 a tibble or data frame with sensor coordinates in named x and y columns,
          • D3 a tibble or data frame with sensor coordinates in named x, y and z columns.
     To build the appropriate meshes in both dimensions, it is necessary to have the input of 3D sensor
     locations and their corresponding 2D layout; the function itself does not perform a projection onto
     a plane. It is also necessary to keep the same sensor locations order in D2 and D3 part of the
     coordinates.
     Note: When specifying the own_coordinates and template at the same time, the template pa-
     rameter takes precedence and the own_coordinates parameter is ignored.
     Note on Matrix Conditioning: The interpolation matrix used in thin-plate spline interpolation can
     be ill-conditioned depending on the spatial configuration of input sensor locations. If this occurs,
     the function automatically uses a Moore-Penrose pseudoinverse (MASS::ginv()) instead of the
     standard matrix inverse to improve numerical stability and issues a warning.

<a id="p044-b003"></a>

<!-- p044-b003 -->
Value
     Returns a list of class "mesh" containing some (or all) of the following components:

<a id="p044-b004"></a>

<!-- p044-b004 -->
D2                  A data frame with x and y coordinates of the created two dimensional point
                         mesh.
     D3                  A data frame with x, y and z coordinates of the created three dimensional point
                         mesh.
     template            A character indicating the template of the sensor coordinates used for mesh com-
                         puting.
     r                   A radius of the circle used for mesh creating.

<a id="p044-b005"></a>

<!-- p044-b005 -->
Additionally, the returned object carries a "diegr_metadata" attribute with metadata such as the
     actual number of generated mesh points or the template used.

<a id="p044-b006"></a>

<!-- p044-b006 -->
References
     EGI Geodesic Sensor Net Technical Manual (2024) Oostenveld, R., & Praamstra, P. (2001). The
     five percent electrode system for high-resolution EEG and ERP measurements. Clinical Neuro-
     physiology, 112(4), 713-719. doi:10.1016/s13882457(00)005277

<a id="page-045"></a>

## PDF page 45

<a id="p045-b001"></a>

<!-- p045-b001 -->
rtdata                                                                                                  45

<a id="p045-b002"></a>

<!-- p045-b002 -->
Examples
    # Computing circle 2D mesh with starting number 4000 points for HCGSN256 template
    # using all electrodes
    M <- point_mesh(dimension = 2, n = 4000, template = "HCGSN256", type = "circle")
    # Inspect the attached metadata
    attr(M, "diegr_metadata")

<a id="p045-b003"></a>

<!-- p045-b003 -->
# Computing polygon 3D mesh with starting number 2000 points for BioSemi 128 template
    M_bio <- point_mesh(dimension = 3, n = 2000, template = "biosemi128")

<a id="p045-b004"></a>

<!-- p045-b004 -->
# Computing polygon 3D mesh with starting number 2000 points and own coordinates
    ## Note: the coordinates are the same as for HCGSN256 template, it is
    ## just a mod example of using the own_coordinates parameter
    M <- point_mesh(dimension = 3, n = 2000, own_coordinates = HCGSN256)

<a id="p045-b005"></a>

<!-- p045-b005 -->
# Computing coordinates of a polygon mesh in 2D and 3D in one step (starting number 3000 points),
    # using 204 electrodes selected for epochdata
    # a) create vector with selected sensor labels
    sensors <- unique(epochdata$sensor)
    # b) create a mesh for selected sensors using sensor_select parameter
    M <- point_mesh(n = 3000, template = "HCGSN256", sensor_select = sensors)

<a id="p045-b006"></a>

<!-- p045-b006 -->
rtdata                       Example response time data

<a id="p045-b007"></a>

<!-- p045-b007 -->
Description
    This dataset is a short slice of a high-density (HD-EEG) dataset from a study investigating the
    impact of deep brain stimulation on patients with advanced Parkinson’s disease (Madetko-Alster,
    2025). The data contains response times (time between stimulus presentation and pressing the
    button) from the experiment involving a simple visual-motor task. The study was carried out by
    Central European Institute of Technology in Brno and was supported by Czech Health Research
    Council AZV NU21-04-00445.
    Example dataset contains response time values in individual experiment epochs for 2 representative
    subjects (one patient and one healthy control subject).

<a id="p045-b008"></a>

<!-- p045-b008 -->
Usage
    data("rtdata")

<a id="p045-b009"></a>

<!-- p045-b009 -->
Format
    The data frame consists of 29 rows (14 for subject 1, 15 for subject 2) and three columns:
    subject Factor variable with subject ID, 1 - representative healthy control subject, 2 - representative
         patient subject.
    epoch Factor variable with epoch number (14 epochs for subject 1, 15 epochs for subject 2).
    RT Response time in milliseconds.

<a id="page-046"></a>

## PDF page 46

<a id="p046-b001"></a>

<!-- p046-b001 -->
46                                                                                                scalp_plot

<a id="p046-b002"></a>

<!-- p046-b002 -->
Details

<a id="p046-b003"></a>

<!-- p046-b003 -->
The epochs and subjects correspond to the sample dataset epochdata.

<a id="p046-b004"></a>

<!-- p046-b004 -->
Source

<a id="p046-b005"></a>

<!-- p046-b005 -->
Central European Institute of Technology, Masaryk University, Brno, Czech Republic.

<a id="p046-b006"></a>

<!-- p046-b006 -->
References

<a id="p046-b007"></a>

<!-- p046-b007 -->
Madetko-Alster N., Alster P., Lamoš M., Šmahovská L., Boušek T., Rektor I. and Bočková M.
      The role of the somatosensory cortex in self-paced movement impairment in Parkinson’s disease.
      Clinical Neurophysiology. 2025, vol. 171, 11-17.

<a id="p046-b008"></a>

<!-- p046-b008 -->
Examples
      # Data preview
      head(rtdata)

<a id="p046-b009"></a>

<!-- p046-b009 -->
scalp_plot                  Plot scalp map of EEG signal

<a id="p046-b010"></a>

<!-- p046-b010 -->
Description

<a id="p046-b011"></a>

<!-- p046-b011 -->
Plot a scalp polygon map of the EEG signal amplitude using topographic colour scale. The thin-
      plate spline interpolation model IM: R3 → R is used for signal interpolation between the sensor
      locations. The shape3d function is used for plotting.
      The function assumes that the input data have already been filtered to the desired subset (e.g., group,
      subject, time point).

<a id="p046-b012"></a>

<!-- p046-b012 -->
Usage

<a id="p046-b013"></a>

<!-- p046-b013 -->
scalp_plot(
        data,
        amplitude,
        mesh,
        tri = NULL,
        coords = NULL,
        template = NULL,
        col_range = NULL,
        col_scale = NULL,
        view
      )

<a id="page-047"></a>

## PDF page 47

<a id="p047-b001"></a>

<!-- p047-b001 -->
scalp_plot                                                                                              47

<a id="p047-b002"></a>

<!-- p047-b002 -->
Arguments
    data                A data frame, tibble or a database table with input data to plot with at least two
                        columns: sensor with sensor labels and the column with the EEG amplitude
                        specified in the argument amplitude.
    amplitude           A character specifying the name of the column from input data with EEG am-
                        plitude values.
    mesh                A "mesh" object (or a named list with the same structure) containing at least a D3
                        element with x, y and z coordinates of a point mesh used for computing the IM
                        model, and a template element specifying the sensor montage. If not defined,
                        the polygon point mesh with default settings from point_mesh function is used.
                        See details for more information about the structure.
    tri                 A three column matrix with indices of the vertices of the triangles. Each row
                        represents one triangle, defined by three vertex indices. If missing, the triangu-
                        lation is computed using make_triangulation function from D2 element of the
                        mesh.
    coords              Sensor coordinates as a tibble or data frame with named x, y, z and sensor
                        columns. The sensor labels must match the labels in sensor column in data. If
                        not defined, the template specified in mesh$template (or the default "HCGSN256")
                        is used.
    template            The kind of sensor template montage used. Available options are "HCGSN256",
                        "biosemi128", "biosemi256", and "system1005". Default setting is "HCGSN256".
    col_range           A vector with minimum and maximum value of the amplitude used in the colour
                        palette for plotting. If not defined, the range of interpolated signal is used.
    col_scale           Optionally, a colour scale to use for plotting. If not defined, it is computed from
                        col_range.
    view                A character for creating a temporary rotated scene (according to neurological
                        terminology). Possible values are: "superior", "anterior", "posterior",
                        "left", "right". If missing, the default view according to user settings is dis-
                        played. Note: Input coordinates corresponding to the positions in the HCGSN
                        template are required to obtain an appropriate view.

<a id="p047-b003"></a>

<!-- p047-b003 -->
Details
    The parameter mesh should optimally be a "mesh" object (output from point_mesh function) or a
    list with the same structure: D2 data frame with x and y columns, D3 data frame with x, y and z
    columns and template element specifying the used template. See point_mesh for more informa-
    tion. In that case, setting the argument tri is optional, and if it is absent, a triangulation based on
    the D2 element of the mesh is calculated and used in the plot. If the input mesh contains only 3D
    coordinates of a point mesh in D3 element, the use of previously created triangulation (through tri
    argument) is necessary. To compare results between 2D topographical plot and 3D scalp plot use
    the same mesh in both cases.
    Be careful when choosing the argument col_range. If the amplitude in input data contains values
    outside the chosen range, this will cause "holes" in the resulting plot. To compare results for differ-
    ent subjects or conditions, set the same values of col_range and col_scale arguments in all cases.
    The default used scale is based on topographical colours with zero value always at the border of
    blue and green shades.

<a id="page-048"></a>

## PDF page 48

<a id="p048-b001"></a>

<!-- p048-b001 -->
48                                                                                      summary_stats_rt

<a id="p048-b002"></a>

<!-- p048-b002 -->
Notes: This function focuses on visualization and does not perform any data subsetting. Users are
      expected to filter the data beforehand using standard dplyr verbs or pick_data function.
      If a mesh object is provided, its internal template name (mesh$template) overrides the template ar-
      gument to ensure spatial consistency. When custom coords are provided, they are used for plotting
      the sensor locations. The template parameter (or mesh$template) is then used only for generating
      the background mesh if it is not provided.
      For correct rendering of a plot, the function requires an openGL-capable device. Displaying the
      rotated scalp map using the view argument requires previous call open3d().

<a id="p048-b003"></a>

<!-- p048-b003 -->
Value
      Called for its side effect of drawing a 3D scalp map in an interactive rgl window. It returns an
      object of class "rglLowLevel" (an integer vector) containing the IDs of the drawn objects.
      Additionally, the returned object carries a "diegr_metadata" attribute with metadata such as de-
      tails about the mesh used for plotting.

<a id="p048-b004"></a>

<!-- p048-b004 -->
See Also
      point_mesh, make_triangulation, create_scale, animated version: animate_scalp

<a id="p048-b005"></a>

<!-- p048-b005 -->
Examples
      ## Note: The example opens a rgl 3D viewer.
      # Plot average scalp map of signal for subject 2 from the time point 10 (the time of the stimulus)
      # the outliers (epoch 14 and 15) are extracted before computing

<a id="p048-b006"></a>

<!-- p048-b006 -->
# a) preparing data
      edata <- pick_data(epochdata, subject_rg = 2, epoch_rg = 1:13, time_rg = 1:10)
      # a2) baseline correction (needed for suitable topographic map)
      data_base <- baseline_correction(edata, baseline_range = 1:9)
      # a3) average computing
      data_mean <- data_base |>
      dplyr::filter(time == 10) |>
      compute_mean(amplitude = "signal_base", type = "point", domain = "space")

<a id="p048-b007"></a>

<!-- p048-b007 -->
# b) plotting the scalp polygon map
      scalp_plot(data_mean, amplitude = "average", col_range = c(-30, 15))

<a id="p048-b008"></a>

<!-- p048-b008 -->
summary_stats_rt            Compute summary statistics of reaction times

<a id="p048-b009"></a>

<!-- p048-b009 -->
Description
      Calculates basic descriptive statistics of reaction time (RT). Statistics are computed separately for
      each combination of grouping variables present in the data (e.g., group, subject, condition).
      Computed statistics include: the number of epochs, minimum, maximum, median, mean, and stan-
      dard deviation of RT.

<a id="page-049"></a>

## PDF page 49

<a id="p049-b001"></a>

<!-- p049-b001 -->
summary_stats_rt                                                                                  49

<a id="p049-b002"></a>

<!-- p049-b002 -->
Usage

<a id="p049-b003"></a>

<!-- p049-b003 -->
summary_stats_rt(data)

<a id="p049-b004"></a>

<!-- p049-b004 -->
Arguments

<a id="p049-b005"></a>

<!-- p049-b005 -->
data                A data frame or a database table with reaction times dataset. Required columns
                        are epoch and RT (value of reaction time in ms). Optional columns: group,
                        subject, condition for computing summary statistics per group/subject/condition.

<a id="p049-b006"></a>

<!-- p049-b006 -->
Value

<a id="p049-b007"></a>

<!-- p049-b007 -->
A tibble with summary statistics of reaction times consisting of the following columns:

<a id="p049-b008"></a>

<!-- p049-b008 -->
group Group identifier (only if present in the input data).
    subject Subject identifier (only if present in the input data).
    condition Experimental condition (only if present in the input data).
    n_epoch Number of epochs.
    min_rt Minimum reaction time.
    max_rt Maximum reaction time.
    median_rt Median reaction time.
    avg_rt Mean reaction time.
    sd_rt Standard deviation of reaction time.

<a id="p049-b009"></a>

<!-- p049-b009 -->
Examples

<a id="p049-b010"></a>

<!-- p049-b010 -->
# 1. Summary statistics for rtdata
    # two different subjects, no group or conditions - results are computed per subject
    summary_stats_rt(rtdata)

<a id="p049-b011"></a>

<!-- p049-b011 -->
# 2. Summary statistics for data with conditions
    # a) create example data
    data_cond <- rtdata
    data_cond$condition <- c(rep("a", 7), rep("b", 7), rep("a", 8), rep("b",7))
    # b) compute statistics per subject and condition
    summary_stats_rt(data_cond)
    # c) compute statistics per conditions regardless of subjects
    # exclude "subject" column from computing
    summary_stats_rt(data_cond[,-1])

<a id="page-050"></a>

## PDF page 50

<a id="p050-b001"></a>

<!-- p050-b001 -->
50                                                                                                  system1005

<a id="p050-b002"></a>

<!-- p050-b002 -->
system1005                    Coordinates of the spherical 10-05 system sensors

<a id="p050-b003"></a>

<!-- p050-b003 -->
Description
      A dataset containing the Cartesian coordinates of high-density EEG sensor positions of the 10-05
      system in 3D space on an idealized spherical surface, along with their corresponding positions in
      2D space. This template contains 335 matched electrode positions for both the 3D space and the
      2D layout. Fiducial markers and extremely low electrodes (such as those on the lower neck and
      cheeks) originally present in the full 10-05 system are excluded from both dimensions to maintain
      visual clarity and structural consistency in topographical modeling.

<a id="p050-b004"></a>

<!-- p050-b004 -->
Usage
      data("system1005")

<a id="p050-b005"></a>

<!-- p050-b005 -->
Format
      A list with the following elements:
      D2 A tibble with 3 columns containing x and y coordinates and sensor labels (according to the
          standard 10-05 naming convention) in 2D.
      D3 A tibble with 4 columns containing x, y and z coordinates and sensor labels (according to the
          standard 10-05 naming convention) in 3D. See ’Details’ for more information.
      ROI A factor containing the name of the region to which the corresponding sensor belongs. The
          levels are: "central", "frontal", "occipital", "parietal", and "temporal". See Details for more
          information about assigning sensors to locations.

<a id="p050-b006"></a>

<!-- p050-b006 -->
Details
      The axis orientation in the 3D case is as follows:
          • x-axis: left (-) to right (+),
          • y-axis: posterior (-) to anterior (+),
          • z-axis: inferior (-) to superior (+). Because this is an idealized spherical model, the origin (0, 0,
            0) represents the geometric center of the sphere. The electrodes are symmetrically distributed
            across this perfect spherical surface and the electrode Cz is located exactly at the apex of the
            sphere at coordinates (0, 0, 1).
      The electrodes are mapped to anatomical regions (ROI) based on their name prefixes. Boundary
      electrodes are assigned to their closest primary region (e.g., ’FC’ and ’FCC’ are grouped under
      Central, while ’FFC’ is Frontal; ’PO’ is assigned to Occipital, and ’CP’ to Parietal).
      The coordinates originate from the MNE-Python GitHub repository.

<a id="p050-b007"></a>

<!-- p050-b007 -->
Source
      The MNE-Python GitHub repository, https://github.com/mne-tools/mne-python/tree/main/
      mne/channels/data/montages

<a id="page-051"></a>

## PDF page 51

<a id="p051-b001"></a>

<!-- p051-b001 -->
topo_plot                                                                                               51

<a id="p051-b002"></a>

<!-- p051-b002 -->
References
    Oostenveld, R., Praamstra, P. (2001). The five percent electrode system for high-resolution EEG and
    ERP measurements. Clinical Neurophysiology, 112(4), 713-719. doi:10.1016/s13882457(00)00527-
    7

<a id="p051-b003"></a>

<!-- p051-b003 -->
Examples
    # A simple plot of sensor coordinates from 10-05 system spherical template as points in 2D
    plot(system1005$D2[,1:2], pch = 16, asp = 1)

<a id="p051-b004"></a>

<!-- p051-b004 -->
topo_plot                    Plot topographic map of EEG signal

<a id="p051-b005"></a>

<!-- p051-b005 -->
Description
    Plot a topographic circle or polygon map of the EEG signal amplitude using topographic colour
    scale. The thin-plate spline interpolation model IM: R2 → R is used for signal interpolation
    between the sensor locations. The output in the form of a ggplot object allows to easily edit the
    result image properties.
    The function assumes that the input data have already been filtered to the desired subset (e.g., group,
    subject, time point).

<a id="p051-b006"></a>

<!-- p051-b006 -->
Usage
    topo_plot(
      data,
      amplitude,
      mesh,
      coords = NULL,
      template = NULL,
      col_range = NULL,
      col_scale = NULL,
      contour = FALSE,
      show_legend = TRUE,
      label_sensors = FALSE
    )

<a id="p051-b007"></a>

<!-- p051-b007 -->
Arguments
    data                A data frame, tibble or a database table with input data to plot with at least two
                        columns: sensor with sensor labels and the column with the EEG amplitude
                        specified in the argument amplitude.
    amplitude           A character string naming the column with EEG amplitude values.

<a id="page-052"></a>

## PDF page 52

<a id="p052-b001"></a>

<!-- p052-b001 -->
52                                                                                                topo_plot

<a id="p052-b002"></a>

<!-- p052-b002 -->
mesh                A "mesh" object (or a named list with the same structure) containing at least a
                         D2 element with x and y coordinates of a point mesh used for computing the IM
                         model, and a template element specifying the sensor montage. If not defined,
                         the point mesh with default settings from point_mesh function is used.
     coords              Sensor coordinates as a tibble or data frame with named x, y and sensor columns.
                         The sensor labels must match the labels in sensor column in data. If not de-
                         fined, the template specified in mesh$template (or the default "HCGSN256") is
                         used.
     template            The kind of sensor template montage used. Available options are "HCGSN256",
                         "biosemi128", "biosemi256", and "system1005". Default setting is "HCGSN256".
     col_range           A vector with minimum and maximum value of the amplitude used in the colour
                         palette for plotting. If not defined, the range of interpolated signal is used.
     col_scale           Optionally, a colour scale to be utilised for plotting. It should be a list with
                         colors and breaks components (usually created via create_scale). If not
                         defined, it is computed from col_range.
     contour             Logical. Indicates, whether contours should be plotted in the graph. Default
                         value is FALSE.
     show_legend         Logical. Indicates, whether legend should be displayed beside the graph. De-
                         fault value is TRUE.
     label_sensors       A logical value indicating whether the sensor labels should also be plotted. De-
                         fault value is FALSE.

<a id="p052-b003"></a>

<!-- p052-b003 -->
Details
     For more details about required mesh structure see point_mesh function. If the input mesh structure
     does not match this format, an error or incorrect function behavior may occur.
     Be careful when choosing the argument col_range. If the amplitude in input data contains values
     outside the chosen range, this will cause "holes" in the resulting plot. To compare results for differ-
     ent subjects or conditions, set the same values of col_range and col_scale arguments in all cases.
     The default used scale is based on topographical colours with zero value always at the border of
     blue and green shades.
     Notes: If a mesh object is provided, its internal template name (mesh$template) overrides the
     template argument to ensure spatial consistency.
     When custom coords are provided, they are always used for plotting the sensor locations. The
     template parameter (or mesh$template) is then used only for generating the background mesh if
     it is not provided.
     This function focuses on visualization and does not perform any data subsetting. Users are expected
     to filter the data beforehand using standard dplyr verbs or pick_data function.

<a id="p052-b004"></a>

<!-- p052-b004 -->
Value
     A ggplot object showing an interpolated topographic map of EEG amplitude.
     Additionally, the returned object carries a "diegr_metadata" attribute with metadata such as de-
     tails about the mesh used for plotting.

<a id="page-053"></a>

## PDF page 53

<a id="p053-b001"></a>

<!-- p053-b001 -->
topo_plot                                                                            53

<a id="p053-b002"></a>

<!-- p053-b002 -->
See Also
    point_mesh, animated version: animate_topo, average topo map: plot_topo_mean

<a id="p053-b003"></a>

<!-- p053-b003 -->
Examples
    # Plot average topographic map of signal for subject 2 from the time point 10
    # (the time of the stimulus) without the outliers (epoch 14 and 15)

<a id="p053-b004"></a>

<!-- p053-b004 -->
# a) preparing data
    # a1) extract required data
    edata <- pick_data(epochdata, subject_rg = 2, epoch_rg = 1:13, time_rg = 1:10)
    # a2) baseline correction (needed for suitable topographic map)
    data_base <- baseline_correction(edata, baseline_range = 1:9)
    # a3) average computing
    data_mean <- data_base |>
    dplyr::filter(time == 10) |>
    compute_mean(amplitude = "signal_base", type = "jack", domain = "space")

<a id="p053-b005"></a>

<!-- p053-b005 -->
# b) plotting the topographic map with contours and legend
    # interval (-30,15) is selected in consideration of the signal progress
    topo_plot(data = data_mean, amplitude = "average", template = "HCGSN256",
    col_range = c(-30, 15), contour = TRUE)

<a id="p053-b006"></a>

<!-- p053-b006 -->
# c) plotting the same map without contours but with sensor labels
    topo_plot(data = data_mean, amplitude = "average", template = "HCGSN256",
     col_range = c(-30, 15), label_sensors = TRUE)

<a id="page-054"></a>

## PDF page 54

<a id="p054-b001"></a>

<!-- p054-b001 -->
Index

<a id="p054-b002"></a>

<!-- p054-b002 -->
∗ dataset                                     plot_time_mean, 39
     biosemi128, 11                           plot_topo_mean, 8, 27, 41, 53
     biosemi256, 12                           plotly, 28
     epochdata, 23                            point_mesh, 3–6, 8, 25, 29, 36–38, 41, 43, 47,
     HCGSN256, 24                                      48, 52, 53
     rtdata, 45
     system1005, 50                           rtdata, 45

<a id="p054-b003"></a>

<!-- p054-b003 -->
animate_scalp, 2, 6, 48                       scale_fill_gradientn, 22
animate_topo, 4, 5, 8, 53                     scalp_plot, 4, 26, 46
animate_topo_mean, 7, 42                      shape3d, 46
                                              summary_stats_rt, 48
baseline_correction, 8, 9, 34                 system1005, 50
biosemi128, 11
biosemi256, 12                                topo_plot, 6, 42, 51
boxplot_epoch, 13, 16
boxplot_rt, 14
boxplot_subject, 14, 15

<a id="p054-b004"></a>

<!-- p054-b004 -->
check_structure, 17
compute_mean, 7, 8, 18, 29, 34, 39–42
create_scale, 21, 42, 48, 52

<a id="p054-b005"></a>

<!-- p054-b005 -->
epochdata, 23, 46

<a id="p054-b006"></a>

<!-- p054-b006 -->
geom_ribbon, 39
gganimate::animate, 6, 8

<a id="p054-b007"></a>

<!-- p054-b007 -->
HCGSN256, 24

<a id="p054-b008"></a>

<!-- p054-b008 -->
interactive_surfaceplot, 25, 27
interactive_surfaceplot_curves, 26, 26
interactive_waveforms, 28, 40

<a id="p054-b009"></a>

<!-- p054-b009 -->
make_triangulation, 3, 29, 47, 48

<a id="p054-b010"></a>

<!-- p054-b010 -->
outliers_epoch, 31

<a id="p054-b011"></a>

<!-- p054-b011 -->
pick_data, 33, 48, 52
pick_region, 34, 35
plot_point_mesh, 36

<a id="p054-b012"></a>

<!-- p054-b012 -->
54
