.class public Lcom/sec/android/app/camera/MenuDimController;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuDimController$DimArray;,
        Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    }
.end annotation


# static fields
.field public static final ADJUST:I = 0xc

.field public static final ANTI_SHAKING:I = 0x1

.field public static final AUTOCONTRAST:I = 0x3

.field public static final BLINK_DETECTION:I = 0x12

.field public static final BRIGHTNESS:I = 0x2

.field public static final CAMCORDER_ADJUST:I = 0x1f

.field public static final CAMCORDER_EFEECT:I = 0x1d

.field public static final CAMCORDER_EXPOSURE_VALUE:I = 0x1b

.field public static final CAMCORDER_MODE_SWITCH:I = 0x18

.field public static final CAMCORDER_RESOLUTION:I = 0x1c

.field public static final CAMCORDER_REVIEW:I = 0x20

.field public static final CAMCORDER_SCENE_MODE:I = 0x1a

.field public static final CAMCORDER_WHITEBALANCE:I = 0x1e

.field public static final CAMERA_MODE_SWITCH:I = 0x0

.field public static final EFFECT:I = 0x7

.field public static final EXPOSURE_VALUE:I = 0xf

.field public static final FLASH_MODE:I = 0xa

.field public static final FOCUS_MODE:I = 0xb

.field public static final GUIDELINE:I = 0x16

.field public static final IMAGE_VIEWER:I = 0x17

.field public static final ISO:I = 0x6

.field public static final METERING:I = 0xd

.field public static final NUM_OF_DIM_BUTTONS:I = 0x22

.field public static final OBJECT_TRACKING:I = 0xe

.field public static final RECORDING_MODE:I = 0x19

.field public static final RESOLUTION:I = 0x10

.field public static final REVIEW:I = 0x14

.field public static final SCENE_MODE:I = 0x4

.field public static final SHOOTING_MODE:I = 0x5

.field public static final SHUTTER_SOUND:I = 0x21

.field public static final SMILE_SHOT:I = 0x9

.field public static final STORAGE:I = 0x15

.field private static final TAG:Ljava/lang/String; = "MenuDimController"

.field public static final TIMER:I = 0x13

.field public static final WHITEBALANCE:I = 0x11

.field public static final ZOOM:I = 0x8


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButtonList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/widget/TwImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDimArray:[Z

.field private mDimArrayList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$DimArray;",
            ">;"
        }
    .end annotation
.end field

.field private mUserSettingValueList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 1
    .parameter "activityContext"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0x22

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/HashMap;

    .line 77
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method private merge([Z)V
    .locals 4
    .parameter "array"

    .prologue
    .line 698
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v2, v2, v0

    aget-boolean v3, p1, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 701
    :cond_0
    return-void
.end method

.method private setDimmed(IZ)V
    .locals 3
    .parameter "key"
    .parameter "dimmed"

    .prologue
    .line 467
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 468
    .local v0, button:Lcom/sec/android/app/camera/widget/TwImageButton;
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aput-boolean p2, v1, p1

    .line 472
    return-void
.end method


# virtual methods
.method public addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V
    .locals 2
    .parameter "key"
    .parameter "button"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 439
    return-void
.end method

.method public getDimArray([Z)V
    .locals 2
    .parameter "dimArray"

    .prologue
    .line 442
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v1, v1, v0

    aput-boolean v1, p1, v0

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method public processDim()V
    .locals 3

    .prologue
    .line 685
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x22

    if-ge v0, v2, :cond_0

    .line 686
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/MenuDimController;->setDimmed(IZ)V

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 690
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 691
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getArray()[Z

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/MenuDimController;->merge([Z)V

    goto :goto_1

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 695
    return-void
.end method

.method public refreshButtonDim(II)Z
    .locals 10
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 494
    const/4 v2, 0x0

    .line 495
    .local v2, resolutionChanged:Z
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 496
    .local v0, cs:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .line 498
    .local v1, dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)Z

    move-result v2

    .line 500
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getMenuId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .end local v1           #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    .line 505
    .restart local v1       #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    sparse-switch p1, :sswitch_data_0

    .line 677
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->processDim()V

    .line 681
    return v2

    .line 507
    :sswitch_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 509
    :pswitch_1
    new-array v3, v9, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 511
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 513
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 514
    const/16 v3, 0x15

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSetting(II)Z

    .line 515
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->access$200(Lcom/sec/android/app/camera/MenuDimController$DimArray;)[Z

    move-result-object v3

    const/16 v4, 0x21

    aput-boolean v5, v3, v4

    .line 516
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setShutterSound(I)V

    .line 527
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 528
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto :goto_0

    .line 532
    :pswitch_2
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 534
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 536
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto :goto_0

    .line 539
    :pswitch_3
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 541
    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 543
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 544
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    goto :goto_0

    .line 547
    :pswitch_4
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 549
    new-array v3, v9, [I

    fill-array-data v3, :array_7

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 550
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_0

    .line 553
    :pswitch_5
    new-array v3, v9, [I

    fill-array-data v3, :array_8

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 555
    new-array v3, v9, [I

    fill-array-data v3, :array_9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 558
    :pswitch_6
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 560
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 562
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_0

    .line 565
    :pswitch_7
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 567
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 569
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_0

    .line 573
    :pswitch_8
    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 575
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 577
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_0

    .line 581
    :pswitch_9
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_10

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 583
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_11

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 585
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto/16 :goto_0

    .line 588
    :pswitch_a
    const/16 v3, 0x10

    new-array v3, v3, [I

    fill-array-data v3, :array_12

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 591
    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_13

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 593
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 594
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_0

    .line 599
    :sswitch_1
    if-eqz p2, :cond_7

    .line 600
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_4

    .line 601
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_14

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 602
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_15

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 603
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getIsSelectedBacklight()Z

    move-result v3

    if-nez v3, :cond_3

    .line 604
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setIsSelectedBacklight(Z)V

    .line 605
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setPreviousFlashMode(I)V

    .line 607
    :cond_3
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 608
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    goto/16 :goto_0

    .line 611
    :cond_4
    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_16

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 612
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_17

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 613
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 614
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 615
    :cond_5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_6

    .line 616
    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 617
    :cond_6
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterFromSceneMode(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    .line 618
    new-array v3, v5, [I

    const/16 v4, 0xa

    aput v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 622
    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getIsSelectedBacklight()Z

    move-result v3

    if-ne v3, v5, :cond_1

    .line 623
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraSettings;->setIsSelectedBacklight(Z)V

    .line 624
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getPreviousFlashMode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_0

    .line 629
    :sswitch_2
    if-ne p2, v5, :cond_1

    .line 630
    new-array v3, v5, [I

    const/16 v4, 0xf

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 631
    new-array v3, v5, [I

    const/16 v4, 0xf

    aput v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 635
    :sswitch_3
    if-ne p2, v5, :cond_1

    .line 636
    new-array v3, v8, [I

    fill-array-data v3, :array_18

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 637
    new-array v3, v8, [I

    fill-array-data v3, :array_19

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 641
    :sswitch_4
    if-eqz p2, :cond_1

    .line 642
    new-array v3, v5, [I

    const/16 v4, 0x1c

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 644
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 648
    :sswitch_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 649
    new-array v3, v5, [I

    const/16 v4, 0x15

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_0

    .line 653
    :sswitch_6
    if-ne p2, v5, :cond_9

    .line 654
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v3

    if-nez v3, :cond_8

    .line 655
    new-array v3, v7, [I

    fill-array-data v3, :array_1a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 656
    new-array v3, v5, [I

    const/16 v4, 0x14

    aput v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 658
    :cond_8
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_1b

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 659
    new-array v3, v5, [I

    const/16 v4, 0x20

    aput v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 661
    :cond_9
    if-ne p2, v8, :cond_a

    .line 662
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_1c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 664
    new-array v3, v7, [I

    fill-array-data v3, :array_1d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 668
    :cond_a
    new-array v3, v5, [I

    const/16 v4, 0x1a

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_0

    .line 672
    :sswitch_7
    if-nez p2, :cond_1

    .line 673
    new-array v3, v5, [I

    const/16 v4, 0x17

    aput v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    goto/16 :goto_0

    .line 505
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xd -> :sswitch_2
        0xe -> :sswitch_3
        0x16 -> :sswitch_5
        0x1d -> :sswitch_7
        0x65 -> :sswitch_4
    .end sparse-switch

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 509
    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 511
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 532
    :array_2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 534
    :array_3
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 539
    :array_4
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 541
    :array_5
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 547
    :array_6
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 549
    :array_7
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 553
    :array_8
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 555
    :array_9
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 558
    :array_a
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 560
    :array_b
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 565
    :array_c
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 567
    :array_d
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 573
    :array_e
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 575
    :array_f
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 581
    :array_10
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 583
    :array_11
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 588
    :array_12
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 591
    :array_13
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 601
    :array_14
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 602
    :array_15
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 611
    :array_16
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 612
    :array_17
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 636
    :array_18
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 637
    :array_19
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 655
    :array_1a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 658
    :array_1b
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 662
    :array_1c
    .array-data 0x4
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 664
    :array_1d
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public resetDim()V
    .locals 2

    .prologue
    .line 458
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 461
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    .line 462
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->setDimmed(IZ)V

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_0
    return-void
.end method

.method public restoreUserSettingValues()V
    .locals 3

    .prologue
    .line 475
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 476
    .local v0, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)Z

    goto :goto_0

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 480
    return-void
.end method

.method public setDimArray([Z)V
    .locals 3
    .parameter "dimArray"

    .prologue
    .line 448
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v2, p1, v0

    aput-boolean v2, v1, v0

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_0
    return-void
.end method

.method public varargs setSettingDefault([I)V
    .locals 9
    .parameter "indices"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 705
    iget-object v5, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    .line 707
    .local v1, cs:Lcom/sec/android/app/camera/CameraSettings;
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 708
    .local v3, index:I
    packed-switch v3, :pswitch_data_0

    .line 707
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 710
    :pswitch_1
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_1

    .line 714
    :pswitch_2
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_1

    .line 718
    :pswitch_3
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    goto :goto_1

    .line 721
    :pswitch_4
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    goto :goto_1

    .line 724
    :pswitch_5
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    goto :goto_1

    .line 727
    :pswitch_6
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setBlinkdetection(I)V

    goto :goto_1

    .line 735
    :pswitch_7
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 736
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 737
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    goto :goto_1

    .line 740
    :pswitch_8
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    goto :goto_1

    .line 743
    :pswitch_9
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_1

    .line 746
    :pswitch_a
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraWB(I)V

    goto :goto_1

    .line 749
    :pswitch_b
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraTimer(I)V

    goto :goto_1

    .line 752
    :pswitch_c
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto :goto_1

    .line 755
    :pswitch_d
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    goto :goto_1

    .line 758
    :pswitch_e
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setRecordingMode(I)V

    goto :goto_1

    .line 762
    :pswitch_f
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_1

    .line 765
    :pswitch_10
    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderReview(I)V

    goto :goto_1

    .line 768
    :pswitch_11
    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    goto :goto_1

    .line 775
    .end local v3           #index:I
    :cond_0
    return-void

    .line 708
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public synchronizeDim()V
    .locals 3

    .prologue
    .line 483
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x22

    if-ge v0, v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwImageButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDimmed(Z)V

    .line 483
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    :cond_1
    return-void
.end method
