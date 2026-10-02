.class Landroidx/core/location/LocationCompat$Api28Impl;
.super Ljava/lang/Object;
.source "LocationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static removeBearingAccuracy(Landroid/location/Location;)V
    .registers 25

    move-object/from16 v0, p0

    .line 746
    invoke-virtual {v0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_95

    .line 753
    :cond_a
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 754
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 755
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    .line 756
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 757
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 758
    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v10

    .line 759
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 760
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v13

    .line 761
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v14

    .line 762
    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v15

    move/from16 v16, v10

    .line 763
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v10

    .line 764
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v17

    move/from16 v18, v13

    .line 765
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v13

    .line 766
    invoke-virtual {v0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v19

    move/from16 v20, v15

    .line 767
    invoke-virtual {v0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v15

    .line 768
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v21

    move/from16 v22, v15

    .line 769
    invoke-virtual {v0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v15

    move/from16 v23, v15

    .line 770
    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 772
    invoke-virtual {v0}, Landroid/location/Location;->reset()V

    .line 773
    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 774
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 775
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 776
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 777
    invoke-virtual {v0, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    if-eqz v16, :cond_73

    .line 779
    invoke-virtual {v0, v11, v12}, Landroid/location/Location;->setAltitude(D)V

    :cond_73
    if-eqz v18, :cond_78

    .line 782
    invoke-virtual {v0, v14}, Landroid/location/Location;->setSpeed(F)V

    :cond_78
    if-eqz v20, :cond_7d

    .line 785
    invoke-virtual {v0, v10}, Landroid/location/Location;->setBearing(F)V

    :cond_7d
    if-eqz v17, :cond_82

    .line 788
    invoke-virtual {v0, v13}, Landroid/location/Location;->setAccuracy(F)V

    :cond_82
    if-eqz v19, :cond_89

    move/from16 v1, v22

    .line 791
    invoke-virtual {v0, v1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    :cond_89
    if-eqz v21, :cond_90

    move/from16 v1, v23

    .line 794
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    :cond_90
    if-eqz v15, :cond_95

    .line 797
    invoke-virtual {v0, v15}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    :cond_95
    :goto_95
    return-void
.end method

.method static removeSpeedAccuracy(Landroid/location/Location;)V
    .registers 25

    move-object/from16 v0, p0

    .line 690
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_95

    .line 697
    :cond_a
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 699
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    .line 700
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 701
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 702
    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v10

    .line 703
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 704
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v13

    .line 705
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v14

    .line 706
    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v15

    move/from16 v16, v10

    .line 707
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v10

    .line 708
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v17

    move/from16 v18, v13

    .line 709
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v13

    .line 710
    invoke-virtual {v0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v19

    move/from16 v20, v15

    .line 711
    invoke-virtual {v0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v15

    .line 712
    invoke-virtual {v0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v21

    move/from16 v22, v15

    .line 713
    invoke-virtual {v0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v15

    move/from16 v23, v15

    .line 714
    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 716
    invoke-virtual {v0}, Landroid/location/Location;->reset()V

    .line 717
    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 719
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 720
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 721
    invoke-virtual {v0, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    if-eqz v16, :cond_73

    .line 723
    invoke-virtual {v0, v11, v12}, Landroid/location/Location;->setAltitude(D)V

    :cond_73
    if-eqz v18, :cond_78

    .line 726
    invoke-virtual {v0, v14}, Landroid/location/Location;->setSpeed(F)V

    :cond_78
    if-eqz v20, :cond_7d

    .line 729
    invoke-virtual {v0, v10}, Landroid/location/Location;->setBearing(F)V

    :cond_7d
    if-eqz v17, :cond_82

    .line 732
    invoke-virtual {v0, v13}, Landroid/location/Location;->setAccuracy(F)V

    :cond_82
    if-eqz v19, :cond_89

    move/from16 v1, v22

    .line 735
    invoke-virtual {v0, v1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    :cond_89
    if-eqz v21, :cond_90

    move/from16 v1, v23

    .line 738
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    :cond_90
    if-eqz v15, :cond_95

    .line 741
    invoke-virtual {v0, v15}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    :cond_95
    :goto_95
    return-void
.end method

.method static removeVerticalAccuracy(Landroid/location/Location;)V
    .registers 25

    move-object/from16 v0, p0

    .line 634
    invoke-virtual {v0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_95

    .line 641
    :cond_a
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 643
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    .line 644
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 645
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 646
    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v10

    .line 647
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    .line 648
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v13

    .line 649
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v14

    .line 650
    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v15

    move/from16 v16, v10

    .line 651
    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v10

    .line 652
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v17

    move/from16 v18, v13

    .line 653
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v13

    .line 654
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v19

    move/from16 v20, v15

    .line 655
    invoke-virtual {v0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v15

    .line 656
    invoke-virtual {v0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v21

    move/from16 v22, v15

    .line 657
    invoke-virtual {v0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v15

    move/from16 v23, v15

    .line 658
    invoke-virtual {v0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 660
    invoke-virtual {v0}, Landroid/location/Location;->reset()V

    .line 661
    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 663
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 664
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 665
    invoke-virtual {v0, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    if-eqz v16, :cond_73

    .line 667
    invoke-virtual {v0, v11, v12}, Landroid/location/Location;->setAltitude(D)V

    :cond_73
    if-eqz v18, :cond_78

    .line 670
    invoke-virtual {v0, v14}, Landroid/location/Location;->setSpeed(F)V

    :cond_78
    if-eqz v20, :cond_7d

    .line 673
    invoke-virtual {v0, v10}, Landroid/location/Location;->setBearing(F)V

    :cond_7d
    if-eqz v17, :cond_82

    .line 676
    invoke-virtual {v0, v13}, Landroid/location/Location;->setAccuracy(F)V

    :cond_82
    if-eqz v19, :cond_89

    move/from16 v1, v22

    .line 679
    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    :cond_89
    if-eqz v21, :cond_90

    move/from16 v1, v23

    .line 682
    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    :cond_90
    if-eqz v15, :cond_95

    .line 685
    invoke-virtual {v0, v15}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    :cond_95
    :goto_95
    return-void
.end method
