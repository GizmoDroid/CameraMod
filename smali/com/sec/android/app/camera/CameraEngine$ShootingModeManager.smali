.class Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;
.super Ljava/lang/Object;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShootingModeManager"
.end annotation


# instance fields
.field private mActionShotStarted:Z

.field private mAddMeStichingCompleted:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinuousFileSequence:I

.field private mCurrentShootingMode:I

.field public mFlashMode:I

.field private mLocation:Landroid/location/Location;

.field private mPanoramaCapturing:Z

.field private mStopMotionCompleted:Z

.field public mStorage:I

.field public mWhiteBalance:I

.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2178
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2179
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    .line 2180
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 2181
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mAddMeStichingCompleted:Z

    .line 2182
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStopMotionCompleted:Z

    .line 2183
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    .line 2184
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 2185
    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    .line 2186
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    .line 2187
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStorage:I

    .line 2188
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraWB()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mWhiteBalance:I

    .line 2189
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mFlashMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2178
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2178
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mAddMeStichingCompleted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;[BLandroid/location/Location;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2178
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->storeImage([BLandroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2178
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;[BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2178
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    return-void
.end method

.method private changeParameterShootingmode(I)V
    .locals 3
    .parameter "shootingMode"

    .prologue
    const-string v2, "disable-aeawb-lock"

    .line 2737
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2738
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->getParameters()Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->access$1602(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/seccamera/SecCamera$Parameters;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    .line 2739
    packed-switch p1, :pswitch_data_0

    .line 2744
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v0

    const-string v1, "disable-aeawb-lock"

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 2747
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$1600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/seccamera/SecCamera;->setParameters(Lcom/sec/android/seccamera/SecCamera$Parameters;)V

    .line 2749
    :cond_0
    return-void

    .line 2741
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera$Parameters;

    move-result-object v0

    const-string v1, "disable-aeawb-lock"

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/seccamera/SecCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 2739
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private final startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
    .locals 3
    .parameter "jpegData"
    .parameter "camera"
    .parameter "location"

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;-><init>(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;[BLandroid/location/Location;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->access$1802(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2286
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1800(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "pictureSavingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2287
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1800(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2288
    return-void
.end method

.method private declared-synchronized storeImage([BLandroid/location/Location;)Z
    .locals 25
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 2295
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    new-instance v5, Lcom/sec/android/app/camera/CaptureData;

    invoke-direct {v5}, Lcom/sec/android/app/camera/CaptureData;-><init>()V

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/CameraEngine;->access$2202(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CaptureData;)Lcom/sec/android/app/camera/CaptureData;

    .line 2296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraEngine;->access$2200(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CaptureData;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CaptureData;->setCaptureData([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2299
    const/4 v15, 0x1

    .line 2301
    .local v15, bSuccess:Z
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 2304
    .local v7, dateTaken:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 2305
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    move v4, v0

    add-int/lit8 v5, v4, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    invoke-static {v7, v8, v4}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JI)Ljava/lang/String;

    move-result-object v22

    .line 2309
    .local v22, name:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->access$2302(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 2312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    move v4, v0

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 2313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2319
    .local v6, filename:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStorage:I

    move v4, v0

    if-nez v4, :cond_2

    .line 2320
    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 2324
    .local v5, directory:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/sec/android/app/camera/CameraEngine;->access$2402(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 2327
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraEngine;->access$2400(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2328
    .local v18, f:Ljava/io/File;
    const/16 v20, 0x0

    .local v20, filenumber:I
    move/from16 v21, v20

    .line 2329
    .end local v20           #filenumber:I
    .local v21, filenumber:I
    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2330
    const-string v4, "CameraEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #filename:Ljava/lang/String;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Duplicated file name found: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v9, v0

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraEngine;->access$2400(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    move v4, v0

    const/16 v6, 0xb

    if-ne v4, v6, :cond_3

    .line 2333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v20, v21, 0x1

    .end local v21           #filenumber:I
    .restart local v20       #filenumber:I
    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".gif"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2338
    .restart local v6       #filename:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/sec/android/app/camera/CameraEngine;->access$2402(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 2340
    const-string v4, "CameraEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New file name created: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v10, v0

    invoke-static {v10}, Lcom/sec/android/app/camera/CameraEngine;->access$2400(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    new-instance v18, Ljava/io/File;

    .end local v18           #f:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraEngine;->access$2400(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v18       #f:Ljava/io/File;
    move/from16 v21, v20

    .end local v20           #filenumber:I
    .restart local v21       #filenumber:I
    goto/16 :goto_3

    .line 2307
    .end local v5           #directory:Ljava/lang/String;
    .end local v6           #filename:Ljava/lang/String;
    .end local v18           #f:Ljava/io/File;
    .end local v21           #filenumber:I
    .end local v22           #name:Ljava/lang/String;
    :cond_0
    invoke-static {v7, v8}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(J)Ljava/lang/String;

    move-result-object v22

    .restart local v22       #name:Ljava/lang/String;
    goto/16 :goto_0

    .line 2315
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #filename:Ljava/lang/String;
    goto/16 :goto_1

    .line 2322
    :cond_2
    sget-object v5, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v5       #directory:Ljava/lang/String;
    goto/16 :goto_2

    .line 2335
    .end local v6           #filename:Ljava/lang/String;
    .restart local v18       #f:Ljava/io/File;
    .restart local v21       #filenumber:I
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v20, v21, 0x1

    .end local v21           #filenumber:I
    .restart local v20       #filenumber:I
    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".jpg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #filename:Ljava/lang/String;
    goto/16 :goto_4

    .line 2344
    .end local v20           #filenumber:I
    .restart local v21       #filenumber:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    move v4, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mWhiteBalance:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mFlashMode:I

    move v14, v0

    move-object/from16 v9, p2

    move-object/from16 v11, p1

    invoke-static/range {v4 .. v14}, Lcom/sec/android/app/camera/ImageSavingUtils;->addImage(ILjava/lang/String;Ljava/lang/String;JLandroid/location/Location;Landroid/graphics/Bitmap;[BIII)Z

    move-result v15

    .line 2346
    const-string v4, "CameraEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "storeImage bSuccess: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    if-eqz v15, :cond_7

    .line 2349
    new-instance v24, Landroid/content/ContentValues;

    const/4 v4, 0x7

    move-object/from16 v0, v24

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2350
    .local v24, values:Landroid/content/ContentValues;
    const-string v4, "title"

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    const-string v4, "_display_name"

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    const-string v4, "datetaken"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2357
    const-string v4, "mime_type"

    const-string v9, "image/jpeg"

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    const/16 v16, 0x0

    .line 2360
    .local v16, degree:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2372
    :goto_5
    :pswitch_0
    const-string v4, "orientation"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2373
    const-string v4, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v9, v0

    invoke-static {v9}, Lcom/sec/android/app/camera/CameraEngine;->access$2400(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    if-eqz p2, :cond_5

    .line 2376
    const-string v4, "latitude"

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2377
    const-string v4, "longitude"

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2380
    :cond_5
    const-string v4, "date_modified"

    const-wide/16 v9, 0x3e8

    div-long v9, v7, v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .end local v7           #dateTaken:J
    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2382
    const/16 v19, 0x0

    .line 2385
    .local v19, fileUri:Landroid/net/Uri;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object v1, v7

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v19

    .line 2386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    move-object v0, v4

    move-object/from16 v1, v19

    move-wide v2, v9

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/ImageSavingUtils;->setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 2388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    move-object/from16 v0, v19

    move-object v1, v4

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 2389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v4, :cond_6

    .line 2390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v5, Landroid/content/Intent;

    .end local v5           #directory:Ljava/lang/String;
    const-string v6, "com.android.camera.NEW_PICTURE"

    .end local v6           #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v7, v0

    iget-object v7, v7, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 2395
    const-string v4, "CameraEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLastCaptureData().getCaptureData() is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    const-string v4, "CameraEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastOrientation is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v6, v0

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraEngine;->access$000(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    const-string v4, "CameraEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastContentUri is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v6, v0

    iget-object v6, v6, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v5, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$2;-><init>(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2419
    :cond_6
    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/CameraEngine;->access$2502(Lcom/sec/android/app/camera/CameraEngine;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2425
    .end local v16           #degree:I
    .end local v18           #f:Ljava/io/File;
    .end local v19           #fileUri:Landroid/net/Uri;
    .end local v21           #filenumber:I
    .end local v22           #name:Ljava/lang/String;
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_7
    :goto_7
    monitor-exit p0

    return v15

    .line 2362
    .restart local v5       #directory:Ljava/lang/String;
    .restart local v6       #filename:Ljava/lang/String;
    .restart local v7       #dateTaken:J
    .restart local v16       #degree:I
    .restart local v18       #f:Ljava/io/File;
    .restart local v21       #filenumber:I
    .restart local v22       #name:Ljava/lang/String;
    .restart local v24       #values:Landroid/content/ContentValues;
    :pswitch_1
    const/16 v16, 0x5a

    .line 2363
    goto/16 :goto_5

    .line 2365
    :pswitch_2
    const/16 v16, 0xb4

    .line 2366
    goto/16 :goto_5

    .line 2368
    :pswitch_3
    const/16 v16, 0x10e

    goto/16 :goto_5

    .line 2406
    .end local v5           #directory:Ljava/lang/String;
    .end local v6           #filename:Ljava/lang/String;
    .end local v7           #dateTaken:J
    .restart local v19       #fileUri:Landroid/net/Uri;
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraEngine;->mThumbNailUpdatingHandler:Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraEngine$ThumbNailUpdatingHandler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 2409
    :catch_0
    move-exception v4

    move-object/from16 v23, v4

    .line 2410
    .local v23, sfe:Landroid/database/sqlite/SQLiteFullException;
    :try_start_5
    const-string v4, "CameraEngine"

    const-string v5, "Not enough space in database"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object v4, v0

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v5, 0x7f070108

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_6

    .line 2421
    .end local v16           #degree:I
    .end local v18           #f:Ljava/io/File;
    .end local v19           #fileUri:Landroid/net/Uri;
    .end local v21           #filenumber:I
    .end local v22           #name:Ljava/lang/String;
    .end local v23           #sfe:Landroid/database/sqlite/SQLiteFullException;
    .end local v24           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v4

    move-object/from16 v17, v4

    .line 2422
    .local v17, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v4, "CameraEngine"

    const-string v5, "Exception while compressing image."

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 2295
    .end local v15           #bSuccess:Z
    .end local v17           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 2360
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public appendStopMotionFrame([BZ)V
    .locals 1
    .parameter "jpegData"
    .parameter "chkAppendFrameComplete"

    .prologue
    .line 2648
    iput-boolean p2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStopMotionCompleted:Z

    .line 2649
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2650
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/seccamera/SecCamera;->native_setStopMotionAppendFrame([BZ)V

    .line 2651
    :cond_0
    return-void
.end method

.method public cancelCaptureForPanorama()V
    .locals 1

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2656
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelPanorama()V

    .line 2658
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 2659
    return-void
.end method

.method public cancelSeriesActionShot()V
    .locals 1

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2767
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelSeriesActionShot()V

    .line 2768
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    .line 2769
    return-void
.end method

.method public handleSelfShutter()V
    .locals 2

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2560
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleTakePicture()V

    .line 2562
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2563
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2566
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleShowReviewScreen()V

    .line 2567
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9c4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    .line 2568
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleHideReviewScreen()V

    .line 2569
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2575
    :cond_0
    :goto_0
    return-void

    .line 2570
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    if-nez v0, :cond_0

    .line 2571
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    .line 2572
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_0
.end method

.method public handleShutterEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v4, "CameraEngine"

    .line 2444
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 2445
    :cond_0
    const-string v1, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShutterEvent - isCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :goto_0
    return-void

    .line 2449
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 2450
    .local v0, shootingMode:I
    const-string v1, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShutterEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2454
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2456
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleTimer()Z

    .line 2457
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotSound(I)V

    .line 2458
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartContinuous()V

    .line 2459
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotInProgress(Z)V

    .line 2460
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotStopRequested(Z)V

    .line 2461
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotShutterEventProcessing(Z)V

    .line 2462
    iput v3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    goto :goto_0

    .line 2464
    :cond_2
    const-string v1, "CameraEngine"

    const-string v1, "shutter event ignored for continuous shot capture"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotShutterEventProcessing(Z)V

    goto :goto_0

    .line 2452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public handleShutterReleaseEvent()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "CameraEngine"

    .line 2472
    const-string v1, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShutterReleaseEvent - mFocusState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraEngine;->access$1100(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bCaptureAfterCancelAF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraEngine;->access$1200(Lcom/sec/android/app/camera/CameraEngine;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$1100(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$1200(Lcom/sec/android/app/camera/CameraEngine;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2475
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2476
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1, v4}, Lcom/sec/android/app/camera/CameraEngine;->access$1202(Lcom/sec/android/app/camera/CameraEngine;Z)Z

    .line 2556
    :goto_0
    return-void

    .line 2478
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$1100(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v1

    if-nez v1, :cond_3

    .line 2479
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1, v7, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(IZ)V

    .line 2480
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2481
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1, v4}, Lcom/sec/android/app/camera/CameraEngine;->access$2602(Lcom/sec/android/app/camera/CameraEngine;Z)Z

    .line 2486
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 2487
    :cond_2
    const-string v1, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShutterReleaseEvent - isCapturing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2482
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$1200(Lcom/sec/android/app/camera/CameraEngine;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 2491
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 2493
    .local v0, shootingMode:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2505
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleSingleShutter()V

    goto :goto_0

    .line 2495
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleSelfShutter()V

    goto :goto_0

    .line 2502
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    .line 2509
    :pswitch_4
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mAddMeStichingCompleted:Z

    .line 2510
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    .line 2513
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2514
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getFrame()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setFrameShotIndex(I)V

    .line 2515
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    .line 2518
    :pswitch_6
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    if-eqz v1, :cond_6

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 2519
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    if-nez v1, :cond_7

    .line 2520
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPanorama()V

    goto/16 :goto_0

    :cond_6
    move v1, v4

    .line 2518
    goto :goto_1

    .line 2522
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPanorama()V

    goto/16 :goto_0

    .line 2526
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 2527
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    .line 2530
    :pswitch_8
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    if-eqz v1, :cond_8

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    .line 2531
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    if-eqz v1, :cond_9

    .line 2532
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartActionShot()V

    goto/16 :goto_0

    :cond_8
    move v1, v4

    .line 2530
    goto :goto_2

    .line 2534
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopActionShot()V

    goto/16 :goto_0

    .line 2538
    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2539
    const-string v1, "CameraEngine"

    const-string v1, "handleShutterReleaseEvent - continuous shot is not capturing"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2543
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraTimer()I

    move-result v1

    if-nez v1, :cond_c

    .line 2544
    const-string v1, "CameraEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHOOTINGMODE_CONTINUOUS - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotShutterEventProcessing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotShutterEventProcessing()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2546
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotShutterEventProcessing(Z)V

    .line 2547
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopContinuous()V

    goto/16 :goto_0

    .line 2549
    :cond_b
    const-string v1, "CameraEngine"

    const-string v1, "shutter release event ignored for continuous shot"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2552
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotShutterEventProcessing(Z)V

    goto/16 :goto_0

    .line 2493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public handleSingleShutter()V
    .locals 4

    .prologue
    .line 2578
    const-string v0, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Shot2Shot] - Capture sequence start::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 2580
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBlinkdetection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2587
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 2591
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleTimer()Z

    .line 2594
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2595
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleTakePicture()V

    .line 2597
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2599
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2602
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleShowReviewScreen()V

    .line 2603
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9c4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    .line 2604
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleHideReviewScreen()V

    .line 2605
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2610
    :cond_3
    :goto_1
    return-void

    .line 2582
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2583
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->native_initializeBlinkDetection()V

    goto :goto_0

    .line 2606
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    if-nez v0, :cond_3

    .line 2607
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_1

    .line 2580
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public handleSingleShutterWithNoShutterLag()V
    .locals 3

    .prologue
    .line 2613
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->access$2202(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CaptureData;)Lcom/sec/android/app/camera/CaptureData;

    .line 2615
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBlinkdetection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2622
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleTimer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2623
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2630
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleTakePicture()V

    .line 2632
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2634
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2637
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleShowReviewScreen()V

    .line 2638
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9c4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    .line 2639
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleHideReviewScreen()V

    .line 2640
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2645
    :cond_1
    :goto_2
    return-void

    .line 2617
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2618
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->native_initializeBlinkDetection()V

    goto :goto_0

    .line 2628
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AbstractCeState;

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    goto :goto_1

    .line 2641
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v0

    if-nez v0, :cond_1

    .line 2642
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_2

    .line 2615
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public handleTimer()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2429
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraTimer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2440
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2431
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleShutterTimer(I)V

    move v0, v2

    .line 2432
    goto :goto_0

    .line 2434
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleShutterTimer(I)V

    move v0, v2

    .line 2435
    goto :goto_0

    .line 2437
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleShutterTimer(I)V

    move v0, v2

    .line 2438
    goto :goto_0

    .line 2429
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 4
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 2197
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 2199
    .local v0, shootingMode:I
    packed-switch v0, :pswitch_data_0

    .line 2254
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2255
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 2256
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object p0, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 2257
    return-void

    .line 2207
    .restart local p0
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 2208
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2211
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 2212
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 2213
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v1

    if-nez v1, :cond_0

    .line 2214
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    goto :goto_0

    .line 2217
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 2218
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    goto :goto_0

    .line 2221
    :pswitch_4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStopMotionCompleted:Z

    if-eqz v1, :cond_1

    .line 2222
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 2223
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStopMotionCompleted:Z

    goto :goto_0

    .line 2225
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/Camera;->onStopMotionCaptured([B)V

    .line 2226
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 2227
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_0

    .line 2231
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto :goto_0

    .line 2234
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    .line 2235
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mAddMeStichingCompleted:Z

    if-eqz v1, :cond_2

    .line 2236
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 2237
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2238
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->finishAddMeShot()V

    .line 2239
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->initializeAddMeShot()V

    .line 2240
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/seccamera/SecCamera;->startCaptureAddMeShot()V

    goto/16 :goto_0

    .line 2243
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2244
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto/16 :goto_0

    .line 2249
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 2250
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "loc"

    .prologue
    .line 2192
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    .line 2193
    return-void
.end method

.method public setShootingMode(I)V
    .locals 5
    .parameter "shootingMode"

    .prologue
    const/4 v4, 0x0

    .line 2662
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2663
    const-string v0, "CameraEngine"

    const-string v1, "setShootingMode - this cmd is skiped because mCameraDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    :goto_0
    :pswitch_0
    return-void

    .line 2666
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    packed-switch v0, :pswitch_data_0

    .line 2696
    :goto_1
    :pswitch_1
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    .line 2698
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->changeParameterShootingmode(I)V

    .line 2699
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$2700(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 2700
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    .line 2701
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$2800(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraEngine;->access$2900(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraEngine;->access$2700(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setShootingModeCallbacks(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 2703
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 2713
    :pswitch_3
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    goto :goto_0

    .line 2676
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelPanorama()V

    .line 2677
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    goto :goto_1

    .line 2680
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->finishFrameShot()V

    goto :goto_1

    .line 2683
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->finishMosaicShot()V

    goto :goto_1

    .line 2686
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->stopAddMe()V

    goto :goto_1

    .line 2689
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->finishActionShot()V

    goto :goto_1

    .line 2692
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->finishStopMotion()V

    goto :goto_1

    .line 2716
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->initializeFrameShot()V

    goto/16 :goto_0

    .line 2719
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->initializeMosaicShot()V

    goto/16 :goto_0

    .line 2722
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startAddMe()V

    goto/16 :goto_0

    .line 2725
    :pswitch_d
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->initializeActionShot()V

    .line 2726
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setResolutionActionShot(II)V

    goto/16 :goto_0

    .line 2731
    :pswitch_e
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->initializeStopMotion()V

    goto/16 :goto_0

    .line 2666
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2703
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public startAddMe()V
    .locals 1

    .prologue
    .line 2752
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2753
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->initializeAddMeShot()V

    .line 2754
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->startCaptureAddMeShot()V

    .line 2756
    :cond_0
    return-void
.end method

.method public stopAddMe()V
    .locals 1

    .prologue
    .line 2759
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2760
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelCaptureAddMeShot()V

    .line 2761
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->finishAddMeShot()V

    .line 2763
    :cond_0
    return-void
.end method
