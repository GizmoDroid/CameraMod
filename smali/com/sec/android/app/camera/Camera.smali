.class public Lcom/sec/android/app/camera/Camera;
.super Lcom/sec/android/app/camera/AbstractCameraActivity;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;
.implements Lcom/sec/android/app/camera/FrameShotMenu$OnFrameShotMenuChangedListener;
.implements Lcom/sec/android/app/camera/MosaicShotMenu$OnMosaicShotMenuChangedListener;
.implements Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;
.implements Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnBlinkDetectionEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnStopMotionEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
.implements Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;
.implements Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
.implements Lcom/sec/android/app/camera/AddMeView$OnAddMeCancelListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camera$LastContentUriCallback;,
        Lcom/sec/android/app/camera/Camera$MainHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MOVE_SENSITIVITY:I = 0x5

.field private static CONTINUOUS_SHOT_DELAYED_SAVING:I = 0x0

.field private static CONTINUOUS_SHOT_SAVE_DELAY:I = 0x0

.field private static FOCUS_TEXT_DURATION:I = 0x0

.field private static FOCUS_TEXT_TIMER_EXPIRED:I = 0x0

.field private static final NUM_SHUTTERSOUND_CHANNELS:I = 0x3

.field public static final OBJECT_TRACKING_STATUS_BASE:I = 0x0

.field public static final OBJECT_TRACKING_STATUS_FAIL:I = 0x3

.field public static final OBJECT_TRACKING_STATUS_MISSING:I = 0x4

.field public static final OBJECT_TRACKING_STATUS_PROGRESSING:I = 0x1

.field public static final OBJECT_TRACKING_STATUS_SUCCESS:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "Camera"

.field private static mScanToast:Landroid/widget/Toast;

.field private static mStorageToast:Landroid/widget/Toast;


# instance fields
.field private PreviewNotEnded:Z

.field private args:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mActionMoveCount:I

.field private mBlinkDetectionRects:[[I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

.field private mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

.field private mChkAllowFocusTouch:Z

.field private mChkBlinkDection:Z

.field private mChkLaunchGallery:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCropValue:Ljava/lang/String;

.field private mFocusText:Landroid/widget/TextView;

.field mHideScaleZoomRect:Ljava/lang/Runnable;

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsDestroying:Z

.field private mIsImageCaptureIntent:Z

.field private mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

.field private mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

.field private mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

.field private mReturnUri:Z

.field private mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

.field private mSaveUri:Landroid/net/Uri;

.field private mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

.field private mSetPreviewInvisible:Z

.field private mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStreamVolume:F

.field private mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

.field private mTouchAutoFocusActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const/16 v0, 0x1388

    sput v0, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_DURATION:I

    .line 158
    const/16 v0, 0x1f4

    sput v0, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_SAVE_DELAY:I

    .line 160
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_TIMER_EXPIRED:I

    .line 161
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;-><init>()V

    .line 119
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 122
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 124
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 125
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 126
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 127
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    .line 129
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 131
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    .line 132
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 133
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 136
    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 137
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 141
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 146
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 153
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 155
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 166
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    .line 171
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->PreviewNotEnded:Z

    .line 176
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mSetPreviewInvisible:Z

    .line 188
    new-instance v1, Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 199
    new-instance v1, Lcom/sec/android/app/camera/Camera$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$1;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1029
    new-instance v1, Lcom/sec/android/app/camera/Camera$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$2;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 2740
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 2742
    return-void
.end method

.method private IsGpsEnableInSettings()V
    .locals 3

    .prologue
    .line 1647
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700a9

    new-instance v2, Lcom/sec/android/app/camera/Camera$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$4;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700aa

    new-instance v2, Lcom/sec/android/app/camera/Camera$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$3;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1657
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ThumbnailController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->updateLastImage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/MenuResourceData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/Camera;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/widget/TwScaleZoomRect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraBaseIndicators;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    return-void
.end method

.method private changeResolutionToPreviewSize(Z)Z
    .locals 3
    .parameter "restartPreview"

    .prologue
    .line 1430
    const-string v1, "800x480"

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1433
    const/4 v0, 0x7

    .line 1437
    .local v0, resolution:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(IZ)Z

    move-result v1

    return v1

    .line 1435
    .end local v0           #resolution:I
    :cond_0
    const/16 v0, 0xc

    .restart local v0       #resolution:I
    goto :goto_0
.end method

.method private createCaptureBitmap([B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"

    .prologue
    .line 2879
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getTempJpegPath()Ljava/lang/String;

    move-result-object v2

    .line 2880
    .local v2, filepath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2881
    .local v1, degree:I
    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/Camera;->saveDataToFile(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2882
    invoke-static {v2}, Lcom/sec/android/app/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 2883
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2887
    :cond_0
    const v3, 0xc800

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2888
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2889
    return-object v0
.end method

.method private static dataLocation()Lcom/sec/android/app/camera/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 3427
    sget-object v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;->ALL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    return-object v0
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1854
    const-string v4, "status"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1855
    .local v3, battStatus:I
    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1856
    .local v2, battScale:I
    const-string v4, "level"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1857
    .local v0, battLevel:I
    const-string v4, "plugged"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1859
    .local v1, battPlugged:I
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleBatteryChanged : Level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", battPlugged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    iget v4, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    if-ge v0, v4, :cond_0

    if-eq v3, v8, :cond_0

    .line 1862
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->handleLowBattery()V

    .line 1865
    :cond_0
    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_2

    .line 1866
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setBatteryCharging()V

    .line 1871
    :goto_0
    return-void

    .line 1870
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    mul-int/lit8 v5, v0, 0x64

    div-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setBatteryLevel(I)V

    goto :goto_0
.end method

.method private handleShutterKey()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "Camera"

    .line 2500
    const-string v2, "Camera"

    const-string v2, "handleShutterKey"

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    const-string v2, "CameraPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Shot2Shot][Begin] - Shutter key presed::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v2

    if-ne v2, v9, :cond_0

    .line 2504
    const-string v2, "Camera"

    const-string v2, "handleShutterKey - CE_STATE_STARTING_PREVIEW"

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    .line 2543
    :goto_0
    return v2

    .line 2508
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isCaptureAfterCancelAF()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2509
    const-string v2, "Camera"

    const-string v2, "returning because it is wating the message of autofocus callback."

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 2510
    goto :goto_0

    .line 2513
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2516
    :cond_2
    const-string v2, "Camera"

    const-string v2, "returning because it is capturing.."

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 2517
    goto :goto_0

    .line 2520
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v9, :cond_5

    .line 2521
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030036

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/SmileShotView;

    .line 2522
    .local v1, smileView:Lcom/sec/android/app/camera/SmileShotView;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/SmileShotView;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;)V

    .line 2523
    invoke-virtual {v1}, Lcom/sec/android/app/camera/SmileShotView;->isDetecting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2524
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v2, v6

    .line 2525
    goto :goto_0

    :cond_4
    move v2, v7

    .line 2527
    goto :goto_0

    .line 2529
    .end local v1           #smileView:Lcom/sec/android/app/camera/SmileShotView;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 2530
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v2, v6

    .line 2531
    goto :goto_0

    .line 2532
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 2533
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030026

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2534
    .local v0, panoramaxView:Lcom/sec/android/app/camera/Panoramax1View;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/Panoramax1View;->setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;)V

    .line 2535
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->isPanoramaCapturing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2536
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v2, v6

    .line 2537
    goto/16 :goto_0

    :cond_7
    move v2, v7

    .line 2539
    goto/16 :goto_0

    .end local v0           #panoramaxView:Lcom/sec/android/app/camera/Panoramax1View;
    :cond_8
    move v2, v7

    .line 2543
    goto/16 :goto_0
.end method

.method private handleShutterKeyReleased()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v4, "Camera"

    .line 2547
    const-string v2, "Camera"

    const-string v2, "handleShutterKeyReleased"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2550
    const-string v2, "Camera"

    const-string v2, "handleShutterKeyReleased - returning because it is capturing.."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 2594
    :goto_0
    return v2

    .line 2554
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 2555
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2557
    const-string v2, "Camera"

    const-string v2, "handleShutterKeyReleased - continuous shot is not started"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 2558
    goto :goto_0

    .line 2561
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v3, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2562
    const-string v2, "Camera"

    const-string v2, "handleShutterKeyReleased - the saving for continuous shot is deleayed"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 2563
    goto :goto_0

    .line 2565
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 2566
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030036

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/SmileShotView;

    .line 2567
    .local v1, smileView:Lcom/sec/android/app/camera/SmileShotView;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/SmileShotView;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;)V

    .line 2568
    invoke-virtual {v1}, Lcom/sec/android/app/camera/SmileShotView;->isDetecting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2569
    invoke-virtual {v1}, Lcom/sec/android/app/camera/SmileShotView;->isStopping()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    .line 2570
    goto :goto_0

    .line 2572
    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/camera/SmileShotView;->stopSmileShot()V

    .line 2573
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 2574
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    :goto_1
    move v2, v5

    .line 2580
    goto :goto_0

    .line 2576
    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/app/camera/SmileShotView;->startDetect()V

    .line 2577
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartSmileDetection()V

    .line 2578
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_1

    .line 2581
    .end local v1           #smileView:Lcom/sec/android/app/camera/SmileShotView;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 2582
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030026

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2583
    .local v0, panoramaxView:Lcom/sec/android/app/camera/Panoramax1View;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->isPostCaptureLayoutVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v5

    .line 2584
    goto/16 :goto_0

    .line 2586
    .end local v0           #panoramaxView:Lcom/sec/android/app/camera/Panoramax1View;
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7

    move v2, v6

    .line 2587
    goto/16 :goto_0

    .line 2590
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    if-eqz v2, :cond_8

    .line 2591
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ReviewButton;->setButtonLocked()V

    :cond_8
    move v2, v6

    .line 2594
    goto/16 :goto_0
.end method

.method private initBlinkdetection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 437
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    .line 438
    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 439
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 440
    return-void
.end method

.method private initIntentFilter()V
    .locals 3

    .prologue
    .line 361
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v2, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 372
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 375
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 376
    .local v1, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 380
    return-void
.end method

.method private initIntentReceive()V
    .locals 3

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 426
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 427
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 428
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 429
    const-string v1, "return-uri"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    const-string v1, "Camera"

    const-string v2, "Extra is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initRemains()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->updateBackgroundTransparency()V

    .line 391
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initBlinkdetection()V

    .line 393
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraIndicators;->initIndicators()V

    .line 396
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 397
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 398
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setViewerRunning(Z)V

    .line 399
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateQuickViewButtonDimmed()V

    .line 401
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 402
    return-void
.end method

.method private initializeFirstTime()V
    .locals 6

    .prologue
    .line 3348
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 3349
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_1

    .line 3351
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    if-nez v2, :cond_0

    .line 3352
    new-instance v2, Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ReviewButton;->getReviewButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/camera/ThumbnailController;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/camera/widget/TwImageButton;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    .line 3353
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getLastImageThumbPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ThumbnailController;->loadData(Ljava/lang/String;)Z

    .line 3364
    :cond_0
    :goto_0
    return-void

    .line 3360
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020002

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3361
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 3362
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ReviewButton;->getReviewButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTouchAutoFocusEnabled()Z
    .locals 3

    .prologue
    .line 1065
    const/4 v0, 0x0

    .line 1067
    .local v0, shootingmode:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-nez v2, :cond_0

    move v1, v0

    .line 1077
    .end local v0           #shootingmode:Z
    .local v1, shootingmode:I
    :goto_0
    return v1

    .line 1070
    .end local v1           #shootingmode:I
    .restart local v0       #shootingmode:Z
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v1, v0

    .line 1077
    .restart local v1       #shootingmode:I
    goto :goto_0

    .line 1074
    .end local v1           #shootingmode:I
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1070
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private onChkImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private onChkImageCaptureIntentWithNoCropping()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 418
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 419
    const-string v1, "nocrop"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 420
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private resetFocusDueToZoom()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1015
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1016
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 1018
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1019
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 1021
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideFocusIndicator()V

    .line 1022
    return-void
.end method

.method private setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 348
    const v2, 0x7f0a00ad

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 349
    .local v1, image:Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 352
    if-nez p1, :cond_0

    .line 353
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030016

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/EmptyView;

    .line 354
    .local v0, emptyview:Lcom/sec/android/app/camera/EmptyView;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 355
    invoke-virtual {v0}, Lcom/sec/android/app/camera/EmptyView;->showMenu()V

    .line 357
    .end local v0           #emptyview:Lcom/sec/android/app/camera/EmptyView;
    :cond_0
    return-void
.end method

.method private setLastPictureThumb([BILandroid/net/Uri;)V
    .locals 7
    .parameter "data"
    .parameter "degree"
    .parameter "uri"

    .prologue
    const-string v6, "Camera"

    .line 3441
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3442
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v3, 0x14

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3443
    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3444
    .local v1, lastPictureThumb:Landroid/graphics/Bitmap;
    invoke-static {v1, p2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3445
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastPictureThumb is...."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v3, p3, v1}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3450
    .end local v1           #lastPictureThumb:Landroid/graphics/Bitmap;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 3447
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 3448
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLastPictureThumb Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showHelptextPopup()V
    .locals 4

    .prologue
    .line 1424
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030020

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/HelptextForShootingMode;

    .line 1425
    .local v0, menu:Lcom/sec/android/app/camera/HelptextForShootingMode;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->showMenu()V

    .line 1426
    return-void
.end method

.method private switchToCamcorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1725
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1726
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TurnOnScrAB"

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->bTurnOnScrAB:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1734
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1737
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1738
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 1740
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->bTurnOnScrAB:Z

    .line 1741
    const-string v1, "Camera"

    const-string v2, "Camera finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1745
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    .line 1746
    return-void
.end method

.method private updateLastImage()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    const-string v11, "Camera"

    .line 3388
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->dataLocation()Lcom/sec/android/app/camera/ImageManager$DataLocation;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    invoke-static {v7, v8, v10, v10, v9}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v4

    .line 3390
    .local v4, list:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    .line 3391
    .local v0, count:I
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->dataLocation()Lcom/sec/android/app/camera/ImageManager$DataLocation;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/camera/ImageManager;->CAMERA_SD_IMAGE_BUCKET_ID:Ljava/lang/String;

    invoke-static {v7, v8, v10, v10, v9}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v5

    .line 3393
    .local v5, listsd:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-interface {v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v1

    .line 3395
    .local v1, countsd:I
    const-string v7, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateLastImage - count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " countsd :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 3397
    const-string v7, "Camera"

    const-string v7, "updateLastImage - count > 0 && countsd >0"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    sub-int v7, v0, v10

    invoke-interface {v4, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 3399
    .local v2, image:Lcom/sec/android/app/camera/gallery/IImage;
    sub-int v7, v1, v10

    invoke-interface {v5, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    .line 3400
    .local v3, imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v7

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 3401
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    .line 3402
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 3422
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v3           #imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v6           #uri:Landroid/net/Uri;
    :goto_0
    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 3423
    invoke-interface {v5}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 3424
    return-void

    .line 3404
    .restart local v2       #image:Lcom/sec/android/app/camera/gallery/IImage;
    .restart local v3       #imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    :cond_0
    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    .line 3405
    .restart local v6       #uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3407
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v3           #imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 3408
    const-string v7, "Camera"

    const-string v7, "updateLastImage - count == 0 &&countsd ==0"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v7, v12, v12}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3410
    :cond_2
    if-nez v1, :cond_3

    .line 3411
    const-string v7, "Camera"

    const-string v7, "updateLastImage - countsd == 0"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    sub-int v7, v0, v10

    invoke-interface {v4, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 3413
    .restart local v2       #image:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    .line 3414
    .restart local v6       #uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3416
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_3
    const-string v7, "Camera"

    const-string v7, "updateLastImage - count <= 0 || countsd < 0"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    sub-int v7, v1, v10

    invoke-interface {v5, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    .line 3418
    .restart local v3       #imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    .line 3419
    .restart local v6       #uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelCapturePanorama()V
    .locals 1

    .prologue
    .line 3226
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 3227
    return-void
.end method

.method public cancelShutterTimer()V
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doCancelShutterTimer()V

    .line 3152
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3153
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    if-eqz v0, :cond_0

    .line 3154
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewButton;->setButtonUnlocked()V

    .line 3157
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 3158
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showTrayButton()V

    .line 3164
    return-void
.end method

.method public changeContrastPreview(I)V
    .locals 2
    .parameter "contrast"

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1672
    return-void
.end method

.method public changeEffectPreview(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1533
    if-eqz p1, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1535
    :cond_0
    return-void
.end method

.method public changeSaturationPreview(I)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1682
    return-void
.end method

.method public changeSceneModePreview(I)V
    .locals 2
    .parameter "sceneMode"

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1212
    return-void
.end method

.method public changeSharpnessPreview(I)V
    .locals 2
    .parameter "sharpness"

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1691
    return-void
.end method

.method public changeWhiteBalancePreview(I)V
    .locals 3
    .parameter "whiteBalance"

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1552
    if-eqz p1, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1554
    :cond_0
    return-void
.end method

.method protected checkLowBattery()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1838
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1839
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "status"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1840
    .local v3, battStatus:I
    const-string v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1841
    .local v2, battScale:I
    const-string v5, "level"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1842
    .local v0, battLevel:I
    const-string v5, "plugged"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1844
    .local v1, battPlugged:I
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkLowBattery : Level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", battPlugged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    iget v5, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    if-ge v0, v5, :cond_0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    move v5, v9

    .line 1850
    :goto_0
    return v5

    :cond_0
    move v5, v8

    goto :goto_0
.end method

.method public checkStorage(ZZ)V
    .locals 0
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 3307
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorage(ZZ)V

    .line 3308
    return-void
.end method

.method public checkStorageLow()V
    .locals 6

    .prologue
    .line 3292
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v0

    .line 3293
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3294
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 3304
    :goto_0
    return-void

    .line 3297
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getMaxSizeOfImage(II)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 3299
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    goto :goto_0

    .line 3302
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    goto :goto_0
.end method

.method public clearContinuousPostCaptureLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 497
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030011

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 499
    .local v0, continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->isPostCaptureLayoutVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v1

    if-nez v1, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 503
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showTrayButton()V

    .line 515
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->resetCapture()V

    .line 516
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->showCaptureLayout()V

    .line 517
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->hidePostCaptureLayout()V

    .line 518
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotSaved(I)V

    .line 520
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotInProgress(Z)V

    .line 522
    :cond_1
    return-void
.end method

.method public clearPostCaptureLayout()V
    .locals 1

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 530
    :goto_0
    return-void

    .line 527
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearContinuousPostCaptureLayout()V

    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public decreaseRemainCount()V
    .locals 2

    .prologue
    .line 3244
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->getRemainCount()I

    move-result v0

    .line 3245
    .local v0, nRemainCount:I
    if-lez v0, :cond_0

    .line 3246
    add-int/lit8 v0, v0, -0x1

    .line 3248
    :cond_0
    if-gtz v0, :cond_1

    .line 3249
    const/4 v0, 0x0

    .line 3250
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 3251
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->mediaStorageDialog()V

    .line 3253
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setRemainCount(I)V

    .line 3254
    return-void
.end method

.method public doStopContinuousSync()V
    .locals 2

    .prologue
    .line 3331
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 3332
    const-string v0, "Camera"

    const-string v1, "doStopContinuousSync - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    :goto_0
    return-void

    .line 3336
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopContinuousSync()V

    goto :goto_0
.end method

.method public doTerminateContinuous()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doTerminateContinuous()V

    .line 494
    :cond_0
    return-void
.end method

.method public getChkKeyFromApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLaunchGallery()Z
    .locals 1

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    return v0
.end method

.method public getOrientationOnTake()I
    .locals 1

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v0

    return v0
.end method

.method public getPreviewStatus()Z
    .locals 1

    .prologue
    .line 3470
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->PreviewNotEnded:Z

    return v0
.end method

.method public getTouchAutoFocusActive()Z
    .locals 1

    .prologue
    .line 1058
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    return v0
.end method

.method public handleResolutionChanged(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 1472
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(IZ)V

    .line 1473
    return-void
.end method

.method public handleResolutionChanged(IZ)V
    .locals 4
    .parameter "resolution"
    .parameter "restartPreview"

    .prologue
    .line 1476
    const-string v1, "Camera"

    const-string v2, "handleResolutionChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000e

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSettingsMenu;

    .line 1480
    .local v0, menu:Lcom/sec/android/app/camera/CameraSettingsMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->lockResolutionChanging()V

    .line 1482
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 1483
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1485
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 1490
    :cond_0
    return-void
.end method

.method public handleShootingModeChanged(I)V
    .locals 20
    .parameter "shootingMode"

    .prologue
    .line 1249
    const-string v16, "Camera"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleShootingModeChanged: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const/16 v16, 0x6

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 1252
    const-string v16, "CameraPerformance"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[Switching][Begin] - Shooting mode change start::"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_0
    const/4 v11, 0x0

    .line 1258
    .local v11, resolutionChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f03000f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/CameraSideMenu;

    .line 1261
    .local v5, cameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;
    const/16 v16, 0x0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1262
    const/16 v16, 0x0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1264
    const/16 v16, 0x6

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    .line 1270
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v11

    .line 1271
    if-eqz p1, :cond_2

    .line 1272
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->initBlinkdetection()V

    .line 1275
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1278
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 1282
    packed-switch p1, :pswitch_data_0

    .line 1408
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1411
    if-eqz v11, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1412
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 1420
    :goto_2
    return-void

    .line 1266
    :cond_4
    const/16 v16, 0x6

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    goto :goto_0

    .line 1284
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030026

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/Panoramax1View;

    .line 1286
    .local v10, panoramaView:Lcom/sec/android/app/camera/Panoramax1View;
    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Panoramax1View;->setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;)V

    .line 1287
    invoke-virtual {v10}, Lcom/sec/android/app/camera/Panoramax1View;->showMenu()V

    .line 1288
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1290
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1291
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto :goto_1

    .line 1295
    .end local v10           #panoramaView:Lcom/sec/android/app/camera/Panoramax1View;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f03001d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/FrameShotMenu;

    .line 1298
    .local v8, frameShotMenu:Lcom/sec/android/app/camera/FrameShotMenu;
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/FrameShotMenu;->setOnFrameShotMenuChangedListener(Lcom/sec/android/app/camera/FrameShotMenu$OnFrameShotMenuChangedListener;)V

    .line 1299
    invoke-virtual {v8}, Lcom/sec/android/app/camera/FrameShotMenu;->showMenu()V

    .line 1301
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1303
    goto/16 :goto_1

    .line 1305
    .end local v8           #frameShotMenu:Lcom/sec/android/app/camera/FrameShotMenu;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030024

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/MosaicShotMenu;

    .line 1308
    .local v9, mosaicShotMenu:Lcom/sec/android/app/camera/MosaicShotMenu;
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MosaicShotMenu;->setOnMosaicShotMenuChangedListener(Lcom/sec/android/app/camera/MosaicShotMenu$OnMosaicShotMenuChangedListener;)V

    .line 1309
    invoke-virtual {v9}, Lcom/sec/android/app/camera/MosaicShotMenu;->showMenu()V

    .line 1311
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1313
    goto/16 :goto_1

    .line 1315
    .end local v9           #mosaicShotMenu:Lcom/sec/android/app/camera/MosaicShotMenu;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030011

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 1317
    .local v7, continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    invoke-virtual {v7}, Lcom/sec/android/app/camera/ContinuousShotView;->showMenu()V

    .line 1318
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1320
    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1321
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1322
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_1

    .line 1326
    .end local v7           #continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030036

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/SmileShotView;

    .line 1328
    .local v13, smileView:Lcom/sec/android/app/camera/SmileShotView;
    invoke-virtual {v13}, Lcom/sec/android/app/camera/SmileShotView;->showMenu()V

    .line 1329
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_1

    .line 1333
    .end local v13           #smileView:Lcom/sec/android/app/camera/SmileShotView;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030037

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/camera/StopMotionPreview;

    .line 1335
    .local v14, stopMotion:Lcom/sec/android/app/camera/StopMotionPreview;
    invoke-virtual {v14}, Lcom/sec/android/app/camera/StopMotionPreview;->reset()V

    .line 1336
    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/StopMotionPreview;->setStopMotionPreviewEventListener(Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;)V

    .line 1337
    invoke-virtual {v14}, Lcom/sec/android/app/camera/StopMotionPreview;->showMenu()V

    .line 1338
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1340
    invoke-virtual {v5, v14}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1341
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1342
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->showHelptextPopup()V

    goto/16 :goto_1

    .line 1346
    .end local v14           #stopMotion:Lcom/sec/android/app/camera/StopMotionPreview;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const/high16 v17, 0x7f03

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/ActionShotView;

    .line 1348
    .local v3, actionShot:Lcom/sec/android/app/camera/ActionShotView;
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ActionShotView;->setActionShotCancelListener(Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;)V

    .line 1349
    invoke-virtual {v3}, Lcom/sec/android/app/camera/ActionShotView;->hidePostCaptureLayout()V

    .line 1350
    invoke-virtual {v3}, Lcom/sec/android/app/camera/ActionShotView;->hideCaptureLayout()V

    .line 1351
    invoke-virtual {v3}, Lcom/sec/android/app/camera/ActionShotView;->showMenu()V

    .line 1352
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1353
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1354
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1355
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->showHelptextPopup()V

    goto/16 :goto_1

    .line 1359
    .end local v3           #actionShot:Lcom/sec/android/app/camera/ActionShotView;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f03003d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/camera/VintageShotView;

    .line 1361
    .local v15, vintage:Lcom/sec/android/app/camera/VintageShotView;
    invoke-virtual {v15}, Lcom/sec/android/app/camera/VintageShotView;->showMenu()V

    .line 1362
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1364
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraSettings;->getShootingVintageMode()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1365
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->setShootingVintageMode(I)V

    .line 1367
    :cond_5
    invoke-virtual {v5, v15}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_1

    .line 1371
    .end local v15           #vintage:Lcom/sec/android/app/camera/VintageShotView;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030001

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/AddMeView;

    .line 1373
    .local v4, addMeView:Lcom/sec/android/app/camera/AddMeView;
    invoke-virtual {v4}, Lcom/sec/android/app/camera/AddMeView;->reset()V

    .line 1374
    invoke-virtual {v4}, Lcom/sec/android/app/camera/AddMeView;->showMenu()V

    .line 1375
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AddMeView;->setOnAddMeCancelListener(Lcom/sec/android/app/camera/AddMeView$OnAddMeCancelListener;)V

    .line 1376
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1377
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1378
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1379
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->showHelptextPopup()V

    goto/16 :goto_1

    .line 1384
    .end local v4           #addMeView:Lcom/sec/android/app/camera/AddMeView;
    :pswitch_a
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_1

    .line 1387
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030010

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/CartoonShotView;

    .line 1389
    .local v6, cartoonShot:Lcom/sec/android/app/camera/CartoonShotView;
    invoke-virtual {v6}, Lcom/sec/android/app/camera/CartoonShotView;->showMenu()V

    .line 1390
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1391
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->showHelptextPopup()V

    goto/16 :goto_1

    .line 1394
    .end local v6           #cartoonShot:Lcom/sec/android/app/camera/CartoonShotView;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030030

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/camera/SelfShotView;

    .line 1396
    .local v12, self:Lcom/sec/android/app/camera/SelfShotView;
    invoke-virtual {v12}, Lcom/sec/android/app/camera/SelfShotView;->showMenu()V

    .line 1397
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1398
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1402
    goto/16 :goto_1

    .line 1413
    .end local v12           #self:Lcom/sec/android/app/camera/SelfShotView;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1414
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    goto/16 :goto_2

    .line 1418
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto/16 :goto_2

    .line 1282
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public handleTouchAutoFocusEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const-string v11, "]"

    const-string v10, "Camera"

    const-string v9, " "

    .line 1081
    const-string v7, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleTouchAutoFocusEvent: XY-["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 1089
    .local v3, ptX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 1090
    .local v4, ptY:I
    const/4 v2, 0x0

    .line 1092
    .local v2, previewWidth:I
    const/4 v6, 0x0

    .line 1093
    .local v6, screenWidth:I
    const/4 v5, 0x0

    .line 1094
    .local v5, screenHeight:I
    const/4 v0, 0x0

    .line 1095
    .local v0, allowLeftMargin:I
    const/4 v1, 0x0

    .line 1097
    .local v1, allowTopMargin:I
    const-string v7, "800x480"

    const-string v8, "400x240"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1098
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1099
    const/16 v2, 0x190

    .line 1105
    :goto_1
    const/16 v6, 0x190

    .line 1106
    const/16 v5, 0xf0

    .line 1107
    const/16 v0, 0x1e

    .line 1108
    const/16 v1, 0x1e

    .line 1123
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraBaseIndicators;->getTouchRectWidth()I

    move-result v0

    .line 1124
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraBaseIndicators;->getTouchRectHeight()I

    move-result v1

    .line 1126
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    if-lt v3, v7, :cond_0

    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    if-gt v3, v7, :cond_0

    .line 1127
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    if-gt v3, v7, :cond_8

    .line 1128
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    add-int v3, v7, v0

    .line 1132
    :cond_2
    :goto_3
    if-gt v4, v1, :cond_9

    .line 1133
    move v4, v1

    .line 1137
    :cond_3
    :goto_4
    const-string v7, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjust XY-["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1140
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 1141
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7, v3, v4}, Lcom/sec/android/app/camera/CameraEngine;->setTouchFocusPosition(II)V

    .line 1142
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->startTouchAutoFocus()V

    .line 1143
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideFocusIndicator()V

    .line 1145
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraBaseIndicators;->resetTouchFocusRectView()V

    .line 1146
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v7, v3, v4, v6, v5}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setTouchFocusRectCenter(IIII)V

    .line 1148
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    goto/16 :goto_0

    .line 1102
    :cond_5
    const/16 v2, 0x140

    goto/16 :goto_1

    .line 1110
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1111
    const/16 v2, 0x320

    .line 1117
    :goto_5
    const/16 v6, 0x320

    .line 1118
    const/16 v5, 0x1e0

    .line 1119
    const/16 v0, 0x32

    .line 1120
    const/16 v1, 0x32

    goto/16 :goto_2

    .line 1114
    :cond_7
    const/16 v2, 0x280

    goto :goto_5

    .line 1129
    :cond_8
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    sub-int/2addr v7, v0

    if-lt v3, v7, :cond_2

    .line 1130
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    sub-int v3, v7, v0

    goto/16 :goto_3

    .line 1134
    :cond_9
    sub-int v7, v5, v1

    if-lt v4, v7, :cond_3

    .line 1135
    sub-int v4, v5, v1

    goto/16 :goto_4
.end method

.method public hideFocusText()V
    .locals 2

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3215
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 3216
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3219
    :cond_0
    return-void
.end method

.method public hideLaunchIcon()V
    .locals 1

    .prologue
    .line 3143
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 3144
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideLaunchIcon()V

    .line 3146
    :cond_0
    return-void
.end method

.method public hideReviewButton()V
    .locals 1

    .prologue
    .line 3186
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    if-eqz v0, :cond_0

    .line 3187
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewButton;->hideMenu()V

    .line 3189
    :cond_0
    return-void
.end method

.method public hideReviewMenu()V
    .locals 4

    .prologue
    .line 3045
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v1, :cond_1

    .line 3077
    :cond_0
    :goto_0
    return-void

    .line 3049
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030027

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PostView;

    .line 3051
    .local v0, menu:Lcom/sec/android/app/camera/PostView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PostView;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3052
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 3054
    iget-boolean v1, v0, Lcom/sec/android/app/camera/PostView;->mPrevSideMenuVisible:Z

    if-nez v1, :cond_2

    .line 3056
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->hideLeftMenu()V

    .line 3059
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    .line 3060
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v1, :cond_2

    .line 3061
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->restoreMenu()V

    .line 3066
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3074
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 3075
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    goto :goto_0
.end method

.method public hideShutterButton()V
    .locals 1

    .prologue
    .line 3173
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3174
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    .line 3176
    :cond_0
    return-void
.end method

.method public hideSideMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3105
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->isAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3116
    :goto_0
    return-void

    .line 3108
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->isLeftSideMenuVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3109
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 3110
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    goto :goto_0

    .line 3112
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 3113
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideLeftMenu()V

    .line 3114
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    goto :goto_0
.end method

.method public hideTrayButton()V
    .locals 1

    .prologue
    .line 3198
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3199
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->hideTrayButton()V

    .line 3201
    :cond_0
    return-void
.end method

.method public initCameraSound()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2381
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v6, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 2384
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aput v5, v0, v5

    .line 2385
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050006

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 2386
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050007

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2387
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050008

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v6

    .line 2390
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050005

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2393
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2394
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f05

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2397
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2418
    return-void
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 3311
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 3312
    const-string v0, "Camera"

    const-string v1, "isCapturing - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    const/4 v0, 0x0

    .line 3315
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    goto :goto_0
.end method

.method public isContinuousShotInProgress()Z
    .locals 2

    .prologue
    .line 3323
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 3324
    const-string v0, "Camera"

    const-string v1, "isContinuousShotInProgress - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    const/4 v0, 0x0

    .line 3327
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v0

    goto :goto_0
.end method

.method public isPreviewStarted()Z
    .locals 1

    .prologue
    .line 3319
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v0

    return v0
.end method

.method public needToResizeForPreviewAspectRatio()Z
    .locals 6

    .prologue
    .line 1761
    const/4 v1, 0x0

    .line 1763
    .local v1, result:Z
    const v2, 0x7f0a00ab

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 1765
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1766
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide v4, 0x3ffaaaaaaaaaaaabL

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 1767
    const/4 v1, 0x0

    .line 1784
    :goto_0
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToResizeForPreviewAspectRatio : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    return v1

    .line 1769
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1771
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 1772
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe8

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 1773
    const/4 v1, 0x0

    goto :goto_0

    .line 1775
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1777
    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide v4, 0x3ff5555555555555L

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    .line 1778
    const/4 v1, 0x0

    goto :goto_0

    .line 1780
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onActionShotAcquisitionProgress(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2993
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActionShotAcquisitionProgress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v2, 0x7f03

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ActionShotView;

    .line 2997
    .local v0, menu:Lcom/sec/android/app/camera/ActionShotView;
    if-ltz p1, :cond_0

    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 2998
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->resetAcquisitionProgress()V

    .line 3001
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->hidePostCaptureLayout()V

    .line 3002
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->showCaptureLayout()V

    .line 3003
    return-void

    .line 3000
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ActionShotView;->setAcquisitionProgress(I)V

    goto :goto_0
.end method

.method public onActionShotCaptureCancelled()V
    .locals 4

    .prologue
    .line 3134
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelSeriesActionShot()V

    .line 3136
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v2, 0x7f03

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ActionShotView;

    .line 3138
    .local v0, menu:Lcom/sec/android/app/camera/ActionShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->hidePostCaptureLayout()V

    .line 3139
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->hideCaptureLayout()V

    .line 3140
    return-void
.end method

.method public onActionShotCaptured()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2630
    const-string v0, "Camera"

    const-string v1, "onActionShotCaptured"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 2632
    return-void
.end method

.method public onActionShotCreatingResultCompleted(Z)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2602
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 2603
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v2, 0x7f03

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ActionShotView;

    .line 2605
    .local v0, actionShot:Lcom/sec/android/app/camera/ActionShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->hidePostCaptureLayout()V

    .line 2606
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->hideCaptureLayout()V

    .line 2608
    return-void
.end method

.method public onActionShotCreatingResultProgress(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2611
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v2, 0x7f03

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ActionShotView;

    .line 2613
    .local v0, actionShot:Lcom/sec/android/app/camera/ActionShotView;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ActionShotView;->setPostCaptureProgress(I)V

    .line 2615
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 2616
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 2618
    :cond_0
    return-void
.end method

.method public onActionShotCreatingResultStarted()V
    .locals 4

    .prologue
    .line 2621
    const-string v1, "Camera"

    const-string v2, "onActionShotCreatingResultStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v2, 0x7f03

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ActionShotView;

    .line 2624
    .local v0, actionShot:Lcom/sec/android/app/camera/ActionShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->hideCaptureLayout()V

    .line 2625
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->showPostCaptureLayout()V

    .line 2626
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ActionShotView;->setPostCaptureProgressMax(I)V

    .line 2627
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v11, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    const-string v3, ")"

    const-string v10, "Camera"

    .line 2912
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--onActivityResult--requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--onActivityResult--resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--onActivityResult--data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    packed-switch p1, :pswitch_data_0

    .line 2990
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2918
    :pswitch_1
    if-ne p2, v4, :cond_5

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2919
    const/4 v7, 0x0

    .line 2920
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2921
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2922
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2923
    :cond_1
    const-string v0, "Camera"

    const-string v0, "Something goes wrong!! Restart attach mode."

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2928
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    const-string v0, "specify-data"

    invoke-virtual {p3, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2929
    const/4 v9, 0x0

    .line 2931
    .local v9, outputStream:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9

    .line 2932
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2933
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 2935
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 2936
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setResult(I)V

    .line 2937
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2941
    :goto_1
    invoke-static {v9}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2948
    .end local v9           #outputStream:Ljava/io/OutputStream;
    :cond_3
    :goto_2
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 2949
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 2941
    .restart local v9       #outputStream:Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 2943
    .end local v9           #outputStream:Ljava/io/OutputStream;
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "bitmap-data"

    invoke-virtual {p3, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2944
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->createCaptureBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2945
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const-string v0, "data"

    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 2950
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_5
    if-nez p2, :cond_0

    .line 2951
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2952
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting cancelled attach image file name: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2959
    :goto_3
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting cancelled attach image uri name: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2962
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 2963
    .local v8, e:Ljava/lang/UnsupportedOperationException;
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error deleting cancelled attach image uri name :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2955
    .end local v8           #e:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 2956
    .restart local v8       #e:Ljava/lang/UnsupportedOperationException;
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error deleting cancelled attach image file name :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2970
    .end local v8           #e:Ljava/lang/UnsupportedOperationException;
    :pswitch_2
    if-nez p2, :cond_0

    .line 2971
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2972
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting cancelled blink detection image file name: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2979
    :goto_4
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting cancelled blink detection image uri name: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 2982
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 2983
    .restart local v8       #e:Ljava/lang/UnsupportedOperationException;
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error deleting cancelled attach image uri name :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2975
    .end local v8           #e:Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v0

    move-object v8, v0

    .line 2976
    .restart local v8       #e:Ljava/lang/UnsupportedOperationException;
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error deleting cancelled attach image file name :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2938
    .end local v8           #e:Ljava/lang/UnsupportedOperationException;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #outputStream:Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 2916
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onAddMeCancelled()V
    .locals 1

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAddMe()V

    .line 2696
    return-void
.end method

.method public onAddMeCapturedFirstPerson()V
    .locals 4

    .prologue
    .line 2667
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030001

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AddMeView;

    .line 2670
    .local v0, AddMeView:Lcom/sec/android/app/camera/AddMeView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AddMeView;->setIsCapturedFirstPerson(Z)V

    .line 2671
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->showMenu()V

    .line 2672
    return-void
.end method

.method public onAddMeError(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 2639
    const-string v0, "Camera"

    const-string v1, "onAddMeError - error"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070086

    new-instance v2, Lcom/sec/android/app/camera/Camera$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$8;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2652
    return-void
.end method

.method public onAddMeInit()V
    .locals 4

    .prologue
    .line 2655
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2657
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030001

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AddMeView;

    .line 2658
    .local v0, addMeView:Lcom/sec/android/app/camera/AddMeView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->reset()V

    .line 2659
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->showMenu()V

    .line 2660
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2661
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 2663
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2664
    return-void
.end method

.method public onAddMePositionSwitched(I)V
    .locals 1
    .parameter "setLeft"

    .prologue
    .line 2635
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->switchAddMePosition(I)V

    .line 2636
    return-void
.end method

.method public onAddMeProgressStitching(I)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 2675
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAddMeProgressStitching - Stitch progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030001

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AddMeView;

    .line 2678
    .local v0, addMeView:Lcom/sec/android/app/camera/AddMeView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->getIsCapturedFirstPerson()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2692
    :cond_0
    :goto_0
    return-void

    .line 2681
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->showPostCaptureLayout()V

    .line 2682
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/AddMeView;->setPostCaptureProgressMax(I)V

    .line 2683
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/AddMeView;->setPostCaptureProgress(I)V

    .line 2684
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/AddMeView;->onAddMeProgressStitching(I)V

    .line 2686
    if-ne p1, v5, :cond_0

    .line 2687
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine;->setAddMeStichingCompleted(Z)V

    .line 2688
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->reset()V

    .line 2689
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->showMenu()V

    .line 2690
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto :goto_0
.end method

.method public onAntishakeChanged(I)V
    .locals 3
    .parameter "antishake"

    .prologue
    .line 1575
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    .line 1577
    const/4 v0, 0x0

    .line 1578
    .local v0, resolutionChanged:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v0

    .line 1579
    if-eqz v0, :cond_0

    .line 1580
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(I)V

    .line 1582
    :cond_0
    return-void
.end method

.method public onBlinkDetectionEvent(I[I[I[I[I)V
    .locals 12
    .parameter "blink_rect_cnt"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2176
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBlinkDetectionEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2179
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 2182
    :cond_0
    if-nez p1, :cond_2

    .line 2183
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    .line 2252
    :cond_1
    return-void

    .line 2185
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    .line 2187
    const/4 v5, 0x4

    new-array v5, v5, [[I

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 2189
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    .line 2190
    .local v3, picWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    .line 2192
    .local v2, picHeight:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_3

    .line 2193
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    new-array v6, p1, [I

    aput-object v6, v5, v0

    .line 2192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2195
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_4

    .line 2196
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2198
    .local v4, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getStoreImageOrientation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2220
    :pswitch_0
    aget v5, p2, v0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2221
    aget v5, p3, v0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2222
    aget v5, p4, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2223
    aget v5, p5, v0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2227
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v6, v4, Landroid/graphics/Rect;->left:I

    aput v6, v5, v0

    .line 2228
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget v6, v4, Landroid/graphics/Rect;->top:I

    aput v6, v5, v0

    .line 2229
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget v6, v4, Landroid/graphics/Rect;->right:I

    aput v6, v5, v0

    .line 2230
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v0

    .line 2195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2201
    :pswitch_1
    aget v5, p5, v0

    sub-int v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2202
    aget v5, p2, v0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2203
    aget v5, p3, v0

    sub-int v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2204
    aget v5, p4, v0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 2207
    :pswitch_2
    aget v5, p2, v0

    sub-int v5, v3, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2208
    aget v5, p3, v0

    sub-int v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2209
    aget v5, p4, v0

    sub-int v5, v3, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2210
    aget v5, p5, v0

    sub-int v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 2213
    :pswitch_3
    aget v5, p3, v0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2214
    aget v5, p4, v0

    sub-int v5, v3, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2215
    aget v5, p5, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2216
    aget v5, p2, v0

    sub-int v5, v3, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 2233
    .end local v4           #rect:Landroid/graphics/Rect;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2234
    .local v1, log:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_5

    .line 2235
    const-string v5, "OnBlinkDetectonRectSave Complete : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aget v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2237
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aget v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2239
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x2

    aget-object v5, v5, v6

    aget v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2241
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x3

    aget-object v5, v5, v6

    aget v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2243
    const-string v5, "Camera"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2234
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2247
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 2248
    const/4 v0, 0x0

    :goto_4
    if-ge v0, p1, :cond_1

    .line 2249
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aget v7, v7, v0

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v9, 0x1

    aget-object v8, v8, v9

    aget v8, v8, v0

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v10, 0x2

    aget-object v9, v9, v10

    aget v9, v9, v0

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v11, 0x3

    aget-object v10, v10, v11

    aget v10, v10, v0

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2248
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2198
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

.method public onBlinkdetectionChanged(I)V
    .locals 1
    .parameter "blinkdetection"

    .prologue
    .line 1595
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setBlinkdetection(I)V

    .line 1596
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initBlinkdetection()V

    .line 1597
    return-void
.end method

.method public onCameraAutocontrastChanged(I)V
    .locals 3
    .parameter "autocontrast"

    .prologue
    .line 1585
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    .line 1587
    const/4 v0, 0x0

    .line 1588
    .local v0, resolutionChanged:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v0

    .line 1589
    if-eqz v0, :cond_0

    .line 1590
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(I)V

    .line 1592
    :cond_0
    return-void
.end method

.method public onCameraQualityChanged(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 1600
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 1601
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1602
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 1603
    return-void
.end method

.method public onCameraResolutionChanged(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 1466
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 1467
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1468
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 1469
    return-void
.end method

.method public onCartoonShotProgressRendering(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 3006
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCartoonShotProgressRendering : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030010

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CartoonShotView;

    .line 3010
    .local v0, menu:Lcom/sec/android/app/camera/CartoonShotView;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CartoonShotView;->setRederingProgress(I)V

    .line 3011
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CartoonShotView;->showPostCaptureLayout()V

    .line 3013
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 3014
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 3016
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    const-string v3, "Camera"

    .line 263
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 269
    const-string v0, "Camera"

    const-string v0, "!!!!!!!!!!!!!!!ORIENTATION_LANDSCAPE!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    goto :goto_0

    .line 271
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 272
    const-string v0, "Camera"

    const-string v0, "!!!!!!!!!!!!!!!ORIENTATION_PORTRAIT!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    goto :goto_0
.end method

.method public onContinuousShotCapturingProgressed(II)V
    .locals 5
    .parameter "curCapturedNum"
    .parameter "maxImageNum"

    .prologue
    const-string v4, "Camera"

    .line 1938
    const-string v1, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotCapturingProgressed() - curCapturedNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxImageNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isContinuousShotInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1940
    const-string v1, "Camera"

    const-string v1, "onContinuousShotCapturingProgressed() - not in progress"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :goto_0
    return-void

    .line 1944
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotCaptured(I)V

    .line 1945
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030011

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 1946
    .local v0, continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ContinuousShotView;->setTouchHandled(Z)V

    .line 1947
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ContinuousShotView;->setCaptureProgress(I)V

    .line 1948
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ContinuousShotView;->setProgressText(I)V

    .line 1949
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotStopRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1950
    const-string v1, "Camera"

    const-string v1, "capture progress not expected in continuous shot anymore"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgressMax(I)V

    .line 1952
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getNumberOfCsShotSaved()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgress(I)V

    .line 1953
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->showPostCaptureLayout()V

    .line 1954
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->hideCaptureLayout()V

    .line 1959
    :cond_1
    if-ne p1, p2, :cond_2

    .line 1960
    const-string v1, "Camera"

    const-string v1, "onContinuousShotCapturingProgressed - test"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v2, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    sget v3, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_SAVE_DELAY:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1964
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->showMenu()V

    goto :goto_0
.end method

.method public onContinuousShotCapturingStopped(I)V
    .locals 4
    .parameter "lastImageNum"

    .prologue
    .line 2004
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContinuousShotCapturingStopped() - lastImageNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotStopRequested(Z)V

    .line 2007
    if-nez p1, :cond_0

    .line 2033
    :goto_0
    return-void

    .line 2011
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030011

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 2014
    .local v0, continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgressMax(I)V

    .line 2015
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->getPostCaptureProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgress(I)V

    .line 2016
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->showPostCaptureLayout()V

    .line 2017
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->hideCaptureLayout()V

    .line 2020
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restoreInitialState()V

    .line 2021
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideShutterButton()V

    goto :goto_0
.end method

.method public onContinuousShotSavingCompleted()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "Camera"

    .line 1968
    const-string v1, "Camera"

    const-string v1, "onContinuousShotSavingCompleted"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v1, :cond_1

    .line 2000
    :cond_0
    :goto_0
    return-void

    .line 1972
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotInProgress(Z)V

    .line 1973
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030011

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 1975
    .local v0, continuousShot:Lcom/sec/android/app/camera/ContinuousShotView;
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/ContinuousShotView;->setTouchHandled(Z)V

    .line 1977
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 1979
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1980
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getNumberOfCsShotCaptured()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1981
    const-string v1, "Camera"

    const-string v1, "ContinuousShot Deley"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    .line 1984
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotCaptured(I)V

    .line 1986
    const-string v1, "reviewon"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1987
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 1988
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1989
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleShowReviewScreen()V

    .line 1990
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v2, 0x9c4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    .line 1991
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleHideReviewScreen()V

    .line 1992
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_0

    .line 1994
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1995
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    if-eqz v1, :cond_0

    .line 1996
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ReviewButton;->setButtonUnlocked()V

    goto/16 :goto_0
.end method

.method public onContrastChanged(I)V
    .locals 1
    .parameter "contrast"

    .prologue
    .line 1666
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 1667
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "CameraPerformance"

    .line 278
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 280
    const-string v1, "Camera"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/Camera;->mSelectedMode:I

    if-ne v1, v3, :cond_0

    .line 284
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 288
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder()V

    .line 289
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopInactivityTimer()V

    .line 290
    iput-object v4, p0, Lcom/sec/android/app/camera/Camera;->mInactivityHandler:Landroid/os/Handler;

    .line 339
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 295
    .local v0, win:Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 297
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->clear()V

    .line 298
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 300
    const v1, 0x7f030022

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 301
    const v1, 0x7f0a00aa

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    .line 302
    const v1, 0x7f0a00ae

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 304
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 306
    const-string v1, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StartUp] - onCreate Layout loaded::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 309
    new-instance v1, Lcom/sec/android/app/camera/MenuResourceData;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/MenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000b

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraIndicators;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 313
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000f

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraSideMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030033

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ShutterButton;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03002c

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ReviewButton;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ReviewButton;->restoreMenu()V

    .line 318
    const-string v1, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StartUp] - onCreate UI Resource loaded::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->showMenu()V

    .line 324
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->setButtonLocked()V

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setButtonLocked()V

    .line 327
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 331
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    .line 333
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 335
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamera()V

    .line 337
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsImageCaptureIntent:Z

    .line 338
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializeFirstTime()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 655
    const-string v1, "Camera"

    const-string v3, "onDestroy"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 659
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraSettings;->setMainCameraSelected(Z)V

    .line 661
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 663
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuResourceData;->onDestroy()V

    .line 665
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 668
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_1

    .line 669
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 670
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 672
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 674
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    .line 675
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 676
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 678
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    if-eqz v1, :cond_2

    .line 679
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->onDestroy()V

    .line 680
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 682
    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    .line 683
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    .line 684
    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 685
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 686
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 687
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 688
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 689
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    .line 690
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 691
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 692
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mInactivityHandler:Landroid/os/Handler;

    .line 694
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onDestroy()V

    .line 695
    return-void
.end method

.method public onEffectChanged(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 1522
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 1523
    if-eqz p1, :cond_0

    .line 1524
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraWB(I)V

    .line 1527
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1528
    return-void
.end method

.method public onExposureValueChanged(I)V
    .locals 1
    .parameter "exposureValue"

    .prologue
    .line 1159
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 1160
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->invalidatePreview()V

    .line 1161
    return-void
.end method

.method public onExposuremeterChanged(I)V
    .locals 1
    .parameter "exposuremeter"

    .prologue
    .line 1565
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    .line 1567
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1568
    return-void
.end method

.method public onFlashModeChanged(I)V
    .locals 3
    .parameter "flashMode"

    .prologue
    const/4 v2, 0x1

    .line 1164
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1166
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1167
    const/4 p1, 0x1

    .line 1169
    :cond_0
    if-ne p1, v2, :cond_1

    .line 1170
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    .line 1174
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1179
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1180
    return-void

    .line 1172
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    goto :goto_0

    .line 1177
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_1
.end method

.method public onFocusModeChanged(I)V
    .locals 1
    .parameter "focusMode"

    .prologue
    .line 1441
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 1445
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1449
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 1450
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1451
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 1454
    :cond_0
    return-void
.end method

.method public onFocusStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1874
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1877
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getTouchFocusPositioned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setFocusIndicator(I)V

    .line 1884
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 1906
    :cond_2
    :goto_1
    return-void

    .line 1881
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setFocusIndicator(I)V

    goto :goto_0

    .line 1892
    :cond_4
    if-nez p1, :cond_2

    .line 1893
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getObjecttracking()I

    move-result v0

    if-nez v0, :cond_2

    .line 1894
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1895
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->forSetOrgFocus()V

    .line 1896
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 1898
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->showFocusIndicator()V

    .line 1899
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTouchFocusIndicator()V

    .line 1900
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    goto :goto_1
.end method

.method public onFrameShotMenuChanged(I)V
    .locals 6
    .parameter "frameindex"

    .prologue
    .line 2156
    const-string v1, "Camera"

    const-string v2, "onFrameShotMenuChanged(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03001c

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FrameCaptureMenu;

    .line 2159
    .local v0, frameView:Lcom/sec/android/app/camera/FrameCaptureMenu;
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2161
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/FrameCaptureMenu;->setImage(I)V

    .line 2162
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FrameCaptureMenu;->showMenu()V

    .line 2163
    return-void
.end method

.method public onGpsChanged(I)V
    .locals 1
    .parameter "gps"

    .prologue
    .line 1639
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1640
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->IsGpsEnableInSettings()V

    .line 1644
    :goto_0
    return-void

    .line 1642
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGps(I)V

    goto :goto_0
.end method

.method public onGuidelineChanged(I)V
    .locals 1
    .parameter "guideline"

    .prologue
    .line 1606
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 1607
    return-void
.end method

.method public onISOChanged(I)V
    .locals 1
    .parameter "iso"

    .prologue
    .line 1558
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    .line 1560
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1561
    return-void
.end method

.method protected onImageStoringCompleted(Ljava/lang/Object;)V
    .locals 12
    .parameter "lock"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 2285
    const-string v6, "Camera"

    const-string v7, "onImageStoringCompleted"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    iget-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v6, :cond_0

    .line 2359
    :goto_0
    return-void

    .line 2290
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->decreaseRemainCount()V

    .line 2291
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateQuickViewButtonDimmed()V

    .line 2293
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 2294
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getNumberOfCsShotSaved()I

    move-result v4

    .line 2295
    .local v4, saved:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getNumberOfCsShotCaptured()I

    move-result v1

    .line 2296
    .local v1, captured:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotSaved(I)V

    .line 2298
    if-lt v4, v1, :cond_2

    .line 2299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearContinuousPostCaptureLayout()V

    .line 2300
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v6, :cond_1

    .line 2301
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2358
    .end local v1           #captured:I
    .end local v4           #saved:I
    :cond_1
    :goto_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 2303
    .restart local v1       #captured:I
    .restart local v4       #saved:I
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v7, 0x7f030011

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 2305
    .local v2, continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/ContinuousShotView;->getPostCaptureProgress()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgress(I)V

    goto :goto_1

    .line 2308
    .end local v1           #captured:I
    .end local v2           #continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    .end local v4           #saved:I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_8

    .line 2309
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v7, 0x7f030037

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/StopMotionPreview;

    .line 2311
    .local v5, stopMotionPreview:Lcom/sec/android/app/camera/StopMotionPreview;
    invoke-virtual {v5}, Lcom/sec/android/app/camera/StopMotionPreview;->hideStopMotionProgressLayout()V

    .line 2312
    invoke-virtual {v5}, Lcom/sec/android/app/camera/StopMotionPreview;->reset()V

    .line 2328
    .end local v5           #stopMotionPreview:Lcom/sec/android/app/camera/StopMotionPreview;
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v6

    if-nez v6, :cond_6

    .line 2329
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v6, :cond_5

    .line 2330
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/ShutterButton;->setButtonUnlocked()V

    .line 2331
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    if-eqz v6, :cond_6

    .line 2332
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSideMenu;->setButtonUnlocked()V

    .line 2336
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2337
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 2338
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 2341
    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v6, :cond_c

    .line 2342
    iget-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    if-eqz v6, :cond_b

    .line 2343
    const-string v6, "blinkdetection"

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2313
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    if-ne v6, v10, :cond_9

    .line 2314
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v7, 0x7f030026

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2316
    .local v3, panorama:Lcom/sec/android/app/camera/Panoramax1View;
    invoke-virtual {v3}, Lcom/sec/android/app/camera/Panoramax1View;->hidePostCaptureLayout()V

    .line 2317
    invoke-virtual {v3}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    goto :goto_3

    .line 2318
    .end local v3           #panorama:Lcom/sec/android/app/camera/Panoramax1View;
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_a

    .line 2319
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v7, 0x7f030010

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CartoonShotView;

    .line 2321
    .local v0, CartoonShotView:Lcom/sec/android/app/camera/CartoonShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CartoonShotView;->hidePostCaptureLayout()V

    goto :goto_3

    .line 2322
    .end local v0           #CartoonShotView:Lcom/sec/android/app/camera/CartoonShotView;
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 2323
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v6

    if-eq v6, v9, :cond_4

    .line 2324
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    goto/16 :goto_3

    .line 2345
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 2346
    const-string v6, "reviewon"

    invoke-virtual {p0, v6, v11}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2350
    :cond_c
    iget-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    if-eqz v6, :cond_d

    .line 2351
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2353
    :cond_d
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v6, v11}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2358
    :catch_0
    move-exception v6

    goto/16 :goto_2
.end method

.method public onInflatedMenuHidden()V
    .locals 2

    .prologue
    .line 3222
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3223
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const-string v3, "Camera"

    .line 698
    const-string v1, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown()-keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-ne v1, v4, :cond_0

    .line 701
    const-string v1, "Camera"

    const-string v1, "onKeyDown - camera is destroying"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 798
    :goto_0
    return v1

    .line 706
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    .line 707
    goto :goto_0

    .line 709
    :catch_0
    move-exception v1

    .line 713
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    .line 714
    goto :goto_0

    .line 717
    :cond_2
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_3

    .line 718
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 719
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 723
    :cond_3
    const-string v1, "Camera"

    const-string v1, "handling onKeyDown event from Activity class"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    sparse-switch p1, :sswitch_data_0

    .line 798
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :sswitch_0
    move v1, v4

    .line 730
    goto :goto_0

    .line 732
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    goto :goto_1

    .line 737
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    .line 738
    goto :goto_0

    .line 740
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 741
    const-string v1, "Camera"

    const-string v1, "returning because it is launch gallery"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 742
    goto :goto_0

    .line 744
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v1, :cond_6

    .line 745
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v1, v4

    .line 746
    goto :goto_0

    .line 749
    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_7

    move v1, v4

    goto :goto_0

    .line 750
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKey()Z

    move-result v1

    if-nez v1, :cond_9

    .line 754
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    if-eqz v1, :cond_8

    .line 758
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 762
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    :cond_9
    move v1, v4

    .line 764
    goto/16 :goto_0

    .line 769
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030041

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ZoomMenu;

    .line 770
    .local v0, menu:Lcom/sec/android/app/camera/ZoomMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->updateSlider()V

    .line 771
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 772
    const/16 v1, 0x18

    if-ne p1, v1, :cond_b

    .line 773
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->zoomOut()V

    .line 780
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->startZoomMenuTimer()V

    .line 781
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/ZoomMenu;->setOnZoomValueChangedListener(Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;)V

    .line 783
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 784
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->showFocusIndicator()V

    .line 786
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v1, :cond_a

    .line 788
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 789
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->showFocusIndicator()V

    :cond_a
    move v1, v4

    .line 792
    goto/16 :goto_0

    .line 775
    :cond_b
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->zoomIn()V

    goto :goto_2

    .line 778
    :cond_c
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->showMenu()V

    goto :goto_2

    .line 725
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1a -> :sswitch_0
        0x1b -> :sswitch_2
        0x42 -> :sswitch_2
        0x50 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v3, "Camera"

    .line 802
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp()-keyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-ne v0, v2, :cond_0

    .line 805
    const-string v0, "Camera"

    const-string v0, "onKeyUp - camera is destroying"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 877
    :goto_0
    return v0

    .line 810
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 811
    goto :goto_0

    .line 813
    :catch_0
    move-exception v0

    .line 817
    :cond_1
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_2

    .line 819
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->showFocusIndicator()V

    .line 821
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 822
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 831
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 832
    goto :goto_0

    .line 824
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 825
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 826
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_1

    .line 835
    :cond_4
    const-string v0, "Camera"

    const-string v0, "handling onKeyUp event from Activity class"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    sparse-switch p1, :sswitch_data_0

    .line 877
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 839
    :sswitch_0
    const-string v0, "Camera"

    const-string v0, "BACK KEY PRESSED!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isStartingPreview()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 841
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_7

    .line 844
    const-string v0, "Camera"

    const-string v0, "Ignoring BACK KEY because preview is being started!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 845
    goto/16 :goto_0

    .line 848
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v0, v2

    .line 849
    goto/16 :goto_0

    :sswitch_1
    move v0, v2

    .line 851
    goto/16 :goto_0

    .line 855
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 856
    goto/16 :goto_0

    .line 858
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 859
    const-string v0, "Camera"

    const-string v0, "returning because it is launch gallery"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 860
    goto/16 :goto_0

    .line 862
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v0, :cond_a

    .line 863
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v0, v2

    .line 864
    goto/16 :goto_0

    .line 866
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v0

    if-nez v0, :cond_5

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto :goto_2

    :sswitch_3
    move v0, v2

    .line 873
    goto/16 :goto_0

    .line 837
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_2
        0x42 -> :sswitch_2
        0x52 -> :sswitch_1
        0x54 -> :sswitch_3
    .end sparse-switch
.end method

.method public onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "keyValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, rectlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    const-string v2, "Camera"

    .line 2713
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLaunchGallery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    if-nez p1, :cond_0

    .line 2731
    :goto_0
    return-void

    .line 2718
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;-><init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 2720
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2722
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 2723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    goto :goto_0

    .line 2725
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isIllegalStateException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2726
    const-string v0, "Camera"

    const-string v0, "IllegalStateException."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 2729
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->searchForLastContentUri()V

    goto :goto_0
.end method

.method public onModechanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v2, "Camera"

    .line 1694
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->resetPressedButtons()V

    .line 1696
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1697
    const-string v0, "Camera"

    const-string v0, "changeMode failed - engine not started"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :goto_0
    return-void

    .line 1701
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1703
    :cond_1
    const-string v0, "Camera"

    const-string v0, "changeMode failed - image capturing"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1707
    :cond_2
    const-string v0, "Camera"

    const-string v0, "changeMode Started"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getIsSelectedBacklight()Z

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1710
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setIsSelectedBacklight(Z)V

    .line 1711
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getPreviousFlashMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1720
    :cond_3
    sput v3, Lcom/sec/android/app/camera/Camera;->mSelectedMode:I

    .line 1721
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder()V

    goto :goto_0
.end method

.method public onMosaicShotMenuChanged(I)V
    .locals 6
    .parameter "frameindex"

    .prologue
    .line 2166
    const-string v1, "Camera"

    const-string v2, "onMosaicShotMenuChanged(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030023

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MosaicCaptureMenu;

    .line 2169
    .local v0, mosaicView:Lcom/sec/android/app/camera/MosaicCaptureMenu;
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2171
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MosaicCaptureMenu;->setImage(I)V

    .line 2172
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MosaicCaptureMenu;->showMenu()V

    .line 2173
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 407
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->setIntent(Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method public onObjectTrackingStatus(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    const-string v3, "]"

    const-string v2, "Camera"

    .line 3086
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onObjectTrackingStatus - msg["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    packed-switch p1, :pswitch_data_0

    .line 3099
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onObjectTrackingStatus - undefined msg["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    :pswitch_0
    return-void

    .line 3087
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onObjecttrackingChanged(I)V
    .locals 1
    .parameter "objecttracking"

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setObjecttracking(I)V

    .line 1572
    return-void
.end method

.method public onOutdoorVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraOutdoorVisibility(I)V

    .line 1620
    return-void
.end method

.method public onPanoramaCaptureCancelled()V
    .locals 1

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 2152
    return-void
.end method

.method public onPanoramaCaptured()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "Camera"

    .line 2136
    const-string v1, "Camera"

    const-string v1, "onPanoramaCaptured"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v1, :cond_0

    .line 2138
    const-string v1, "Camera"

    const-string v1, "onPanoramaCaptured - mMenuResourceData is null"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    :goto_0
    return-void

    .line 2142
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030026

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2143
    .local v0, panoramaView:Lcom/sec/android/app/camera/Panoramax1View;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->setCaptureProgressIncreased()V

    .line 2145
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 2147
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->restartCancelTimer()V

    goto :goto_0
.end method

.method public onPanoramaCapturedNew()V
    .locals 3

    .prologue
    .line 2037
    const-string v0, "Camera"

    const-string v1, "onPanoramaCapturedNew"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    return-void
.end method

.method public onPanoramaDirectionChanged(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    const-string v4, "Camera"

    .line 2042
    const-string v0, "Camera"

    const-string v0, "onPanoramaDirectionChanged - direct"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v0, :cond_0

    .line 2044
    const-string v0, "Camera"

    const-string v0, "onPanoramaDirectionChanged - mMenuResourceData is null"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_0
    return-void
.end method

.method public onPanoramaError(I)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    const-string v5, "Camera"

    .line 2070
    const-string v1, "Camera"

    const-string v1, "onPanoramaError - error"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v1, :cond_0

    .line 2072
    const-string v1, "Camera"

    const-string v1, "onPanoramaError - mCameraEngine is null"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :goto_0
    return-void

    .line 2076
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 2078
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v1, :cond_1

    .line 2079
    const-string v1, "Camera"

    const-string v1, "onPanoramaError - mMenuResourceData is null"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2083
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030026

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2084
    .local v0, menu:Lcom/sec/android/app/camera/Panoramax1View;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->hidePostCaptureLayout()V

    .line 2085
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->showCaptureLayout()V

    .line 2086
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    .line 2087
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 2089
    const v1, 0x7f070016

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPanoramaProgressStitching(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/16 v4, 0x64

    const-string v3, "Camera"

    .line 2109
    const-string v1, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaProgressStitching - Stitch progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v1, :cond_0

    .line 2111
    const-string v1, "Camera"

    const-string v1, "onPanoramaProgressStitching - mMenuResourceData is null"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    :goto_0
    return-void

    .line 2115
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030026

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2117
    .local v0, menu:Lcom/sec/android/app/camera/Panoramax1View;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 2119
    if-ne p1, v4, :cond_1

    .line 2120
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/Panoramax1View;->setPostCaptureProgressMax(I)V

    .line 2121
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Panoramax1View;->setPostCaptureProgress(I)V

    .line 2122
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->showCaptureLayout()V

    .line 2123
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto :goto_0

    .line 2125
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->hideCaptureLayout()V

    .line 2126
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->showPostCaptureLayout()V

    .line 2127
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/Panoramax1View;->setPostCaptureProgressMax(I)V

    .line 2128
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Panoramax1View;->setPostCaptureProgress(I)V

    .line 2130
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->invalidatePreview()V

    goto :goto_0
.end method

.method public onPanoramaRectChanged(II)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const-string v5, "Camera"

    .line 2094
    const-string v0, "Camera"

    const-string v0, "onPanoramaRectChanged - rect"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v0, :cond_0

    .line 2096
    const-string v0, "Camera"

    const-string v0, "onPanoramaRectChanged - mMenuResourceData is null"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2105
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 443
    const-string v1, "Camera"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v2, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v2, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 450
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->showFocusIndicator()V

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_2

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForEngineStartingThread()V

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForStartPreviewThreadComplete()V

    .line 458
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->enableStatusBar()V

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideMenuTimer()V

    .line 461
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 462
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->onFocusStateChanged(I)V

    .line 463
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideAllDlg()V

    .line 465
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_4

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearTimer()V

    .line 467
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 468
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 471
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 472
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 473
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 477
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030027

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PostView;

    .line 478
    .local v0, menu:Lcom/sec/android/app/camera/PostView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PostView;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 479
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 480
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 481
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 485
    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    if-eqz v1, :cond_6

    .line 486
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getLastImageThumbPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ThumbnailController;->storeData(Ljava/lang/String;)Z

    .line 488
    :cond_6
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    .line 489
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, ""

    const-string v6, "Camera"

    .line 533
    const-string v2, "Camera"

    const-string v2, "onResume"

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v0, ""

    .line 536
    .local v0, status:Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentFilter()V

    .line 537
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->disableStatusBar()V

    .line 546
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_Call()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 652
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/CameraEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 552
    const-string v2, "Camera"

    const-string v2, "onResume - MediaScanner is Scanning"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    if-nez v2, :cond_1

    .line 554
    const-string v2, ""

    invoke-static {p0, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    .line 558
    :goto_1
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    const v3, 0x7f0700d0

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    .line 559
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 560
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 561
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 562
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 556
    :cond_1
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    goto :goto_1

    .line 565
    :cond_2
    sput-object v5, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    .line 568
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 570
    const-string v2, "shared"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 571
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    if-nez v2, :cond_3

    .line 572
    const-string v2, ""

    invoke-static {p0, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    .line 576
    :goto_2
    const-string v2, "Camera"

    const-string v2, "onResume - media is present but not mounted, and shared via USB mass storage"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    const v3, 0x7f0700d2

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    .line 578
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 579
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 580
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 581
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 574
    :cond_3
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    goto :goto_2

    .line 603
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 604
    .local v1, win:Landroid/view/Window;
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 606
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPostCaptureLayout()V

    .line 607
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 608
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 610
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 611
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 613
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 614
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 615
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 616
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->resetPressedButtons()V

    .line 617
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v2, :cond_5

    .line 618
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ShutterButton;->updateButton(I)V

    .line 620
    :cond_5
    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 621
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentReceive()V

    .line 623
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 624
    const-string v2, "from_app"

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 625
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 626
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 640
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ShutterButton;->setButtonLocked()V

    .line 641
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setButtonLocked()V

    .line 645
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 647
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initRemains()V

    .line 648
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_6

    .line 649
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateThumbnailButton()V

    .line 650
    :cond_6
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_0

    .line 628
    :cond_7
    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 633
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 636
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    goto :goto_3
.end method

.method public onReviewChanged(I)V
    .locals 1
    .parameter "review"

    .prologue
    .line 1610
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    .line 1614
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1616
    return-void
.end method

.method public onSaturationChanged(I)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 1676
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 1677
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "s"

    .prologue
    .line 974
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v0, v1, v2

    .line 976
    .local v0, newZoomValue:I
    if-gez v0, :cond_0

    .line 977
    const/4 v0, 0x0

    .line 979
    :cond_0
    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    .line 980
    const/16 v0, 0x1e

    .line 982
    :cond_1
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 984
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 985
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->invalidate()V

    .line 986
    const/4 v1, 0x0

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 990
    const-string v2, "Camera"

    const-string v3, "onScaleBegin"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 992
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    .line 994
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v2, :cond_0

    .line 995
    new-instance v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 997
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 998
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1001
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1002
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1003
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1006
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 1007
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1009
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 1011
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 1025
    const-string v0, "Camera"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1027
    return-void
.end method

.method public onSceneModeChanged(I)V
    .locals 4
    .parameter "sceneMode"

    .prologue
    .line 1183
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSceneModeChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 1200
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1202
    const/4 v0, 0x0

    .line 1204
    .local v0, resolutionChanged:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v0

    .line 1205
    if-eqz v0, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(I)V

    .line 1208
    :cond_0
    return-void
.end method

.method public onSearchingLastContentUriCompleted()V
    .locals 1

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    if-eqz v0, :cond_0

    .line 2735
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 2736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 2738
    :cond_0
    return-void
.end method

.method public onSelfModechanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1215
    const-string v0, "Camera"

    const-string v1, "onSelfModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1217
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSelfMode(I)V

    .line 1222
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 1225
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 1226
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 1230
    :cond_0
    return-void

    .line 1219
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mSetPreviewInvisible:Z

    .line 1220
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setSelfMode(I)V

    goto :goto_0
.end method

.method public onSharpnessChanged(I)V
    .locals 1
    .parameter "sharpness"

    .prologue
    .line 1686
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 1687
    return-void
.end method

.method public onShootingModeChanged(I)V
    .locals 3
    .parameter "shootingMode"

    .prologue
    .line 1233
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShootingModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 1238
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 1241
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 1242
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1243
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 1246
    :cond_0
    return-void
.end method

.method public onShutterSoundChanged(I)V
    .locals 5
    .parameter "shuttersound"

    .prologue
    const/4 v2, 0x1

    .line 1623
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShutterSound(I)V

    .line 1624
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1625
    const-string v0, "Camera"

    const-string v1, "onShutterSoundChanged"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotSound(I)V

    .line 1628
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1629
    return-void
.end method

.method public onSmileDetectingStopped()V
    .locals 4

    .prologue
    .line 1917
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 1918
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030036

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SmileShotView;

    .line 1919
    .local v0, smileView:Lcom/sec/android/app/camera/SmileShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SmileShotView;->stopDetect()V

    .line 1920
    return-void
.end method

.method public onSmileShotDetectionSuccess()V
    .locals 4

    .prologue
    .line 1923
    const-string v1, "Camera"

    const-string v2, "onOnSmileShotDetectionSuccess"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->smileDetectionCompleted()V

    .line 1927
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030036

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SmileShotView;

    .line 1928
    .local v0, smileView:Lcom/sec/android/app/camera/SmileShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SmileShotView;->isStopping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1934
    :goto_0
    return-void

    .line 1931
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SmileShotView;->stopSmileShot()V

    .line 1932
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    .line 1933
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto :goto_0
.end method

.method public onStartingPreviewCompleted()V
    .locals 4

    .prologue
    .line 1823
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000e

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSettingsMenu;

    .line 1824
    .local v0, menu:Lcom/sec/android/app/camera/CameraSettingsMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->unlockResolutionChanging()V

    .line 1826
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restoreInitialState()V

    .line 1827
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1828
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    if-eqz v1, :cond_0

    .line 1829
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ReviewButton;->setButtonUnlocked()V

    .line 1831
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->setButtonUnlocked()V

    .line 1832
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setButtonUnlocked()V

    .line 1835
    :cond_1
    return-void
.end method

.method public onStopMotionCaptured([B)V
    .locals 4
    .parameter "jpegData"

    .prologue
    .line 2255
    const-string v1, "Camera"

    const-string v2, "onStopMotionCaptured"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030037

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/StopMotionPreview;

    .line 2260
    .local v0, stopMotion:Lcom/sec/android/app/camera/StopMotionPreview;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/StopMotionPreview;->addThumbnailImage([B)V

    .line 2261
    return-void
.end method

.method public onStopMotionPreviewEditingFinished([BZ)V
    .locals 3
    .parameter "jpegData"
    .parameter "chkAppendFrameComplete"

    .prologue
    .line 2264
    const-string v1, "Camera"

    const-string v2, "onStopMotionPreviewEditingFinished"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    if-eqz p2, :cond_0

    .line 2267
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Camera$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/Camera$5;-><init>(Lcom/sec/android/app/camera/Camera;[BZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2272
    .local v0, thread:Ljava/lang/Thread;
    const-string v1, "stopMotionThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2273
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2277
    .end local v0           #thread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 2275
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/CameraEngine;->appendStopMotionFrame([BZ)V

    goto :goto_0
.end method

.method public onStopMotionProgressStitching(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/16 v4, 0x64

    .line 2699
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopMotionProgressStitching - Stitch progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030037

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/StopMotionPreview;

    .line 2703
    .local v0, stopMotionPreview:Lcom/sec/android/app/camera/StopMotionPreview;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/StopMotionPreview;->showStopMotionProgressLayout()V

    .line 2704
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/StopMotionPreview;->setStopMotionProgressMax(I)V

    .line 2705
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/StopMotionPreview;->setStopMotionProgress(I)V

    .line 2707
    if-ne p1, v4, :cond_0

    .line 2708
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 2710
    :cond_0
    return-void
.end method

.method public onStopMotionRestoreMenu()V
    .locals 2

    .prologue
    .line 2280
    const-string v0, "Camera"

    const-string v1, "onStopMotionRestoreMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 2282
    return-void
.end method

.method public onStorageChanged(I)V
    .locals 1
    .parameter "storage"

    .prologue
    .line 1633
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 1634
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1635
    return-void
.end method

.method public onTimerChanged(I)V
    .locals 4
    .parameter "timer"

    .prologue
    .line 1457
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000f

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSideMenu;

    .line 1458
    .local v0, sideMenu:Lcom/sec/android/app/camera/CameraSideMenu;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1459
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraTimer(I)V

    .line 1461
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1462
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 1909
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03003a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerCounting;

    .line 1910
    .local v0, menu:Lcom/sec/android/app/camera/TimerCounting;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerCounting;->showMenu()V

    .line 1911
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/TimerCounting;->updateCountingNum(I)V

    .line 1912
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "Camera"

    .line 883
    if-nez p1, :cond_0

    move v0, v3

    .line 970
    :goto_0
    return v0

    .line 885
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-ne v0, v2, :cond_1

    .line 886
    const-string v0, "Camera"

    const-string v0, "onTouchEvent - camera is destroying"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 887
    goto :goto_0

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_2

    .line 891
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 895
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 896
    goto :goto_0

    .line 898
    :catch_0
    move-exception v0

    .line 902
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_5

    .line 904
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 905
    goto :goto_0

    .line 907
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 910
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isPreviewTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 911
    goto :goto_0

    .line 914
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_7

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 919
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    move v0, v2

    .line 921
    goto :goto_0

    .line 925
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 970
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 927
    :pswitch_0
    const-string v0, "Camera"

    const-string v0, "MotionEvent.ACTION_UP"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    if-eqz v0, :cond_a

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->shrinkTouchFocusRect()V

    .line 933
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 939
    :cond_a
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    move v0, v2

    .line 940
    goto/16 :goto_0

    .line 942
    :pswitch_1
    const-string v0, "Camera"

    const-string v0, "MotionEvent.ACTION_DOWN"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 946
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 947
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 948
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 950
    :cond_b
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;)V

    :cond_c
    move v0, v2

    .line 953
    goto/16 :goto_0

    .line 956
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 957
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_d

    .line 958
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;)V

    :cond_d
    move v0, v2

    .line 962
    goto/16 :goto_0

    .line 964
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 965
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 966
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    move v0, v2

    .line 967
    goto/16 :goto_0

    .line 925
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 1155
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onUserInteraction()V

    .line 1156
    return-void
.end method

.method public onVintageChanged(I)V
    .locals 4
    .parameter "vintage"

    .prologue
    .line 1749
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingVintageMode(I)V

    .line 1752
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03003d

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/VintageShotView;

    .line 1753
    .local v0, menu:Lcom/sec/android/app/camera/VintageShotView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/VintageShotView;->updateVintageModeButton(II)V

    .line 1754
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/VintageShotView;->updateVintageText(I)V

    .line 1756
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1757
    invoke-virtual {v0}, Lcom/sec/android/app/camera/VintageShotView;->showMenu()V

    .line 1758
    return-void
.end method

.method public onWhiteBalanceChanged(I)V
    .locals 2
    .parameter "whiteBalance"

    .prologue
    .line 1540
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraWB(I)V

    .line 1541
    if-eqz p1, :cond_0

    .line 1542
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 1545
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1546
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 1
    .parameter "zoomValue"

    .prologue
    .line 1661
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1662
    return-void
.end method

.method public playCameraSound(II)V
    .locals 7
    .parameter "Sound"
    .parameter "loop"

    .prologue
    const/4 v0, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x3

    .line 2423
    if-ltz p1, :cond_3

    if-ge p1, v0, :cond_3

    .line 2424
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2425
    invoke-static {v2, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 2426
    :cond_0
    if-ne p1, v2, :cond_1

    .line 2427
    const/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 2428
    :cond_1
    if-ne p1, v1, :cond_2

    .line 2429
    const/16 v0, 0xb

    invoke-static {v0, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 2436
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2457
    return-void

    .line 2430
    :cond_3
    if-lt p1, v0, :cond_4

    const/4 v0, 0x6

    if-gt p1, v0, :cond_4

    .line 2431
    invoke-static {v1, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    goto :goto_0

    .line 2432
    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 2433
    invoke-static {v2, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    goto :goto_0
.end method

.method public resetContinuousShot()V
    .locals 2

    .prologue
    .line 3230
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3231
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    .line 3236
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotInProgress(Z)V

    .line 3237
    return-void
.end method

.method protected resetToDefaultSettings()V
    .locals 3

    .prologue
    .line 2461
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700cc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700a9

    new-instance v2, Lcom/sec/android/app/camera/Camera$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$7;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/Camera$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$6;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2497
    return-void
.end method

.method public resetTouchFocus()V
    .locals 2

    .prologue
    .line 3119
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3120
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->forSetOrgFocus()V

    .line 3121
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 3122
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->showFocusIndicator()V

    .line 3123
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTouchFocusIndicator()V

    .line 3126
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3127
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 3129
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 3130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 3131
    return-void
.end method

.method public resizeForPreviewAspectRatio()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1791
    const/4 v1, 0x0

    .line 1795
    .local v1, result:Z
    const v2, 0x7f0a00ab

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 1797
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mSetPreviewInvisible:Z

    if-eqz v2, :cond_0

    .line 1798
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 1801
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1802
    const-wide v2, 0x3ffaaaaaaaaaaaabL

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v1

    .line 1812
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mSetPreviewInvisible:Z

    if-eqz v2, :cond_1

    .line 1813
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 1814
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mSetPreviewInvisible:Z

    .line 1817
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->updateBackgroundTransparency()V

    .line 1818
    return v1

    .line 1804
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 1805
    const-wide/high16 v2, 0x3fe8

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v1

    goto :goto_0

    .line 1808
    :cond_3
    const-wide v2, 0x3ff5555555555555L

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v1

    goto :goto_0
.end method

.method public restoreInitialState()V
    .locals 2

    .prologue
    .line 3278
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->isAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3289
    :cond_0
    :goto_0
    return-void

    .line 3280
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->isInflatedMenuSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3282
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->isLeftSideMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3283
    const-string v0, "Camera"

    const-string v1, "restoreInitialState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3284
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 3285
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideLeftMenu()V

    .line 3286
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    goto :goto_0
.end method

.method public saveDataToFile(Ljava/lang/String;[B)Z
    .locals 5
    .parameter "filePath"
    .parameter "data"

    .prologue
    .line 2893
    const/4 v1, 0x0

    .line 2895
    .local v1, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2896
    .end local v1           #f:Ljava/io/FileOutputStream;
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2900
    if-eqz v2, :cond_0

    .line 2902
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 2908
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v3

    .line 2897
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2898
    .local v0, e:Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 2900
    if-eqz v1, :cond_1

    .line 2902
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 2903
    :catch_1
    move-exception v4

    goto :goto_1

    .line 2900
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 2902
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 2900
    :cond_2
    :goto_4
    throw v3

    .line 2903
    :catch_2
    move-exception v4

    goto :goto_4

    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    goto :goto_0

    .line 2900
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 2897
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public setConnectingStateGPS(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3340
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    if-eqz v0, :cond_0

    .line 3341
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraIndicators;->setConnectingStateGPS(I)V

    .line 3342
    :cond_0
    return-void
.end method

.method public setIsLaunchGallery(Z)V
    .locals 0
    .parameter "chkLaunchGallery"

    .prologue
    .line 1037
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 1038
    return-void
.end method

.method public setPreviewStatus(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 3467
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->PreviewNotEnded:Z

    .line 3468
    return-void
.end method

.method public setResolutionAndShootingModeToDefault()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1493
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 1495
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1497
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f03000f

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSideMenu;

    .line 1498
    .local v0, cameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1499
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1501
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    .line 1503
    .local v1, shootingMode:I
    if-ne v1, v7, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1504
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    .line 1509
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 1510
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1512
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v6, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1514
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1517
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 1519
    :cond_1
    return-void

    .line 1505
    :cond_2
    if-eq v1, v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1506
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    goto :goto_0
.end method

.method public setTouchAutoFocusActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 1050
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 1054
    return-void
.end method

.method public showFocusText()V
    .locals 4

    .prologue
    .line 3205
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3206
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3207
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_TIMER_EXPIRED:I

    sget v2, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3210
    :cond_0
    return-void
.end method

.method public showReviewButton()V
    .locals 1

    .prologue
    .line 3180
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    if-eqz v0, :cond_0

    .line 3181
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewButton;->restoreMenu()V

    .line 3183
    :cond_0
    return-void
.end method

.method public showReviewMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3020
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v1, :cond_0

    .line 3042
    :goto_0
    return-void

    .line 3024
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030027

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PostView;

    .line 3026
    .local v0, menu:Lcom/sec/android/app/camera/PostView;
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/PostView;->setImageUri(Landroid/net/Uri;)V

    .line 3027
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/PostView;->setImagePath(Ljava/lang/String;)V

    .line 3028
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 3029
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_1

    .line 3030
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/PostView;->setImagePath(Ljava/lang/String;)V

    .line 3032
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 3033
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PostView;->showMenu()V

    .line 3036
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3037
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/PostView;->mPrevSideMenuVisible:Z

    .line 3038
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    goto :goto_0

    .line 3040
    :cond_2
    iput-boolean v4, v0, Lcom/sec/android/app/camera/PostView;->mPrevSideMenuVisible:Z

    goto :goto_0
.end method

.method public showShutterButton()V
    .locals 1

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3168
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->restoreMenu()V

    .line 3170
    :cond_0
    return-void
.end method

.method public showTrayButton()V
    .locals 1

    .prologue
    .line 3192
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3193
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->showTrayButton()V

    .line 3195
    :cond_0
    return-void
.end method

.method public updateQuickViewButtonDimmed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x1d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2362
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 2363
    .local v0, dim:Lcom/sec/android/app/camera/MenuDimController;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_2

    .line 2364
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentSearchingLastContentUri()V

    .line 2365
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2366
    :cond_0
    invoke-virtual {v0, v4, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 2367
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v1, v5, v5}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 2369
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ReviewButton;->getReviewButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    iput-boolean v3, v1, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 2375
    :cond_2
    :goto_0
    return-void

    .line 2371
    :cond_3
    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 2372
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ReviewButton;->getReviewButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    iput-boolean v2, v1, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    goto :goto_0
.end method

.method public updateRemainStorageIndicator()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 3257
    const/4 v0, 0x0

    .line 3258
    .local v0, nRemainCount:I
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eq v1, v4, :cond_0

    .line 3259
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkStorageLow()V

    .line 3260
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-nez v1, :cond_0

    .line 3261
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getRemainCount(III)I

    move-result v0

    .line 3265
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3266
    iput v4, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 3270
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v1, :cond_1

    .line 3271
    const/4 v0, 0x0

    .line 3273
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setRemainCount(I)V

    .line 3274
    return-void
.end method

.method public updateThumbnail([BILandroid/net/Uri;)V
    .locals 2
    .parameter "data"
    .parameter "degree"
    .parameter "uri"

    .prologue
    .line 3431
    const-string v0, "Camera1018"

    const-string v1, "updateThumbnail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3434
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/Camera;->setLastPictureThumb([BILandroid/net/Uri;)V

    .line 3435
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->updateDisplayIfNeeded()V

    .line 3437
    :cond_0
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 2

    .prologue
    const-string v1, "Camera"

    .line 3369
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    .line 3371
    const-string v0, "Camera"

    const-string v0, "updateThumbnailButton"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3372
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3373
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isIllegalStateException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3374
    const-string v0, "Camera"

    const-string v0, "IllegalStateException."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 3377
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3378
    const v0, 0x7f0700d0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3379
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 3381
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->updateLastImage()V

    .line 3383
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->updateDisplayIfNeeded()V

    .line 3385
    :cond_3
    return-void
.end method

.method public viewLastImage()V
    .locals 2

    .prologue
    const-string v1, "Camera"

    .line 3453
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3454
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3455
    const-string v0, "quickview"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3464
    :cond_0
    :goto_0
    return-void

    .line 3457
    :cond_1
    const-string v0, "Camera"

    const-string v0, "Can\'t view last image."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isIllegalStateException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3459
    const-string v0, "Camera"

    const-string v0, "IllegalStateException."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0
.end method
