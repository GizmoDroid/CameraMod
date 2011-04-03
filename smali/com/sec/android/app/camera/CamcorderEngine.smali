.class public Lcom/sec/android/app/camera/CamcorderEngine;
.super Lcom/sec/android/app/camera/CameraEngine;
.source "CamcorderEngine.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;
    }
.end annotation


# static fields
.field private static final ESN_1:Ljava/lang/String; = "17600000000"

.field private static final ESN_2:Ljava/lang/String; = "B0000000"

.field private static final MAX_VIDEO_FILE_SIZE:J = 0xffffffffL

.field private static final TAG:Ljava/lang/String; = "CamcorderEngine"


# instance fields
.field private mCamcorderDevice:Landroid/hardware/Camera;

.field private mCamcorderParameters:Landroid/hardware/Camera$Parameters;

.field private mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

.field private mCameraVideoFilename:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoTitle:Ljava/lang/String;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

.field private mEsn:Ljava/lang/String;

.field private mIsVideoCaptureIntent:Z

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field mPausing:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrepareRecordingThread:Ljava/lang/Thread;

.field mPreviewing:Z

.field private mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

.field private mRecordingInitiated:Z

.field private mStartRecordingThread:Ljava/lang/Thread;

.field private mVideoFileLengthInByte:J

.field private mVideoRecordingTimeInMiliSecond:J

.field private mZoomIsBlocked:Z

.field private saveUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 8
    .parameter "activityContext"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 81
    new-instance v0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    .line 86
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 101
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPausing:Z

    .line 102
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPreviewing:Z

    .line 105
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 117
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 118
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mEsn:Ljava/lang/String;

    .line 120
    iput-wide v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    .line 121
    iput-wide v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 123
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 124
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 126
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mZoomIsBlocked:Z

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateRecording;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateRecording;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateWaitForSurface;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v5}, Lcom/sec/android/app/camera/CeStateWaitForSurface;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/CamcorderEngine;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/CamcorderEngine;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->initializeRecorder()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/CamcorderEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->disableAlertSound()V

    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1171
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1172
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1174
    const-string v1, "CamcorderEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1178
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private cleanupTempFile()V
    .locals 4

    .prologue
    .line 1181
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1183
    const-string v1, "CamcorderEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "temp video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_0
    return-void
.end method

.method private createVideoPath()V
    .locals 22

    .prologue
    .line 1111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1113
    .local v7, dateTaken:J
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v19

    if-nez v19, :cond_0

    .line 1117
    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 1124
    .local v4, cameraDirPath:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 1125
    const-string v10, ".mp4"

    .line 1126
    .local v10, extension:Ljava/lang/String;
    const-string v16, "video/mp4"

    .line 1132
    .local v16, mimeType:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1133
    .local v3, cameraDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1134
    new-instance v6, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-object/from16 v19, v0

    const v20, 0x7f07000b

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v6, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1136
    .local v5, date:Ljava/util/Date;
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 1137
    .local v15, filepart:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1138
    .local v12, filename:Ljava/lang/String;
    move-object/from16 v17, v15

    .line 1139
    .local v17, title:Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1142
    .local v9, displayName:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v11, f:Ljava/io/File;
    const/4 v13, 0x0

    .line 1144
    .local v13, filenumber:I
    :goto_2
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1145
    const-string v19, "CamcorderEngine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Duplicated file name found: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-virtual {v5, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 1147
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 1148
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v14, v13, 0x1

    .end local v13           #filenumber:I
    .local v14, filenumber:I
    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1149
    move-object/from16 v17, v15

    .line 1150
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1151
    const-string v19, "CamcorderEngine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "New file name created: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    new-instance v11, Ljava/io/File;

    .end local v11           #f:Ljava/io/File;
    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v11       #f:Ljava/io/File;
    move v13, v14

    .end local v14           #filenumber:I
    .restart local v13       #filenumber:I
    goto/16 :goto_2

    .line 1119
    .end local v3           #cameraDir:Ljava/io/File;
    .end local v4           #cameraDirPath:Ljava/lang/String;
    .end local v5           #date:Ljava/util/Date;
    .end local v6           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #extension:Ljava/lang/String;
    .end local v11           #f:Ljava/io/File;
    .end local v12           #filename:Ljava/lang/String;
    .end local v13           #filenumber:I
    .end local v15           #filepart:Ljava/lang/String;
    .end local v16           #mimeType:Ljava/lang/String;
    .end local v17           #title:Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v4       #cameraDirPath:Ljava/lang/String;
    goto/16 :goto_0

    .line 1128
    :cond_1
    const-string v10, ".3gp"

    .line 1129
    .restart local v10       #extension:Ljava/lang/String;
    const-string v16, "video/3gpp"

    .restart local v16       #mimeType:Ljava/lang/String;
    goto/16 :goto_1

    .line 1155
    .restart local v3       #cameraDir:Ljava/io/File;
    .restart local v5       #date:Ljava/util/Date;
    .restart local v6       #dateFormat:Ljava/text/SimpleDateFormat;
    .restart local v9       #displayName:Ljava/lang/String;
    .restart local v11       #f:Ljava/io/File;
    .restart local v12       #filename:Ljava/lang/String;
    .restart local v13       #filenumber:I
    .restart local v15       #filepart:Ljava/lang/String;
    .restart local v17       #title:Ljava/lang/String;
    :cond_2
    new-instance v18, Landroid/content/ContentValues;

    const/16 v19, 0x7

    invoke-direct/range {v18 .. v19}, Landroid/content/ContentValues;-><init>(I)V

    .line 1157
    .local v18, values:Landroid/content/ContentValues;
    const-string v19, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    const-string v19, "_display_name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-string v19, "datetaken"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1160
    const-string v19, "mime_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const-string v19, "_data"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const-string v19, "date_modified"

    const-wide/16 v20, 0x3e8

    div-long v20, v7, v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1164
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1165
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoTitle:Ljava/lang/String;

    .line 1166
    const-string v19, "CamcorderEngine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Current camera video filename: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1168
    return-void
.end method

.method private disableAlertSound()V
    .locals 3

    .prologue
    .line 737
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 738
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 739
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 741
    :cond_0
    return-void
.end method

.method private enableAlertSound()V
    .locals 3

    .prologue
    .line 745
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 746
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 747
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 749
    :cond_0
    return-void
.end method

.method private getTempFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1189
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    if-nez v1, :cond_0

    .line 1190
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 1194
    .local v0, cameraDirPath:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "temp_video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1192
    .end local v0           #cameraDirPath:Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v0       #cameraDirPath:Ljava/lang/String;
    goto :goto_0
.end method

.method private initializeRecorder()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    const/4 v12, 0x1

    const-string v11, "CamcorderEngine"

    .line 449
    const-string v8, "CamcorderEngine"

    const-string v8, "initializeRecorder"

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v8, :cond_0

    .line 575
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->readVideoPreferences()V

    .line 456
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 457
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 459
    .local v5, myExtras:Landroid/os/Bundle;
    const-wide/16 v6, 0x0

    .line 460
    .local v6, requestedSizeLimit:J
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    .line 461
    const-string v8, "output"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->saveUri:Landroid/net/Uri;

    .line 462
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->saveUri:Landroid/net/Uri;

    if-eqz v8, :cond_1

    .line 464
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->saveUri:Landroid/net/Uri;

    const-string v10, "rw"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :cond_1
    :goto_1
    const-string v8, "android.intent.extra.sizeLimit"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 473
    const-string v8, "CamcorderEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestedSizeLimit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_2
    new-instance v8, Landroid/media/MediaRecorder;

    invoke-direct {v8}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 477
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->unlock()V

    .line 478
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 480
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 481
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 484
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 485
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 487
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v12}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 488
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 491
    iget v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    add-int/lit8 v8, v8, 0x22

    iput v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 493
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 496
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v9, 0x1f4

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setDurationInterval(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 504
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v8, :cond_9

    .line 505
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 515
    :goto_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 516
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v10, v10, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 518
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 519
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 520
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 521
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 522
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 525
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 526
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 528
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 531
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v3

    .line 532
    .local v3, maxFileSize:J
    cmp-long v8, v6, v13

    if-lez v8, :cond_5

    cmp-long v8, v6, v3

    if-gez v8, :cond_5

    .line 533
    move-wide v3, v6

    .line 536
    :cond_5
    const-wide v8, 0xffffffffL

    cmp-long v8, v3, v8

    if-lez v8, :cond_6

    .line 537
    const-wide v3, 0xffffffffL

    .line 540
    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v8

    if-ne v8, v12, :cond_7

    .line 541
    cmp-long v8, v6, v13

    if-nez v8, :cond_a

    .line 543
    const-wide/32 v3, 0xed800

    .line 549
    :cond_7
    :goto_4
    const-string v8, "CamcorderEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "maxFileSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :try_start_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v3, v4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 559
    :goto_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v8, :cond_8

    .line 561
    :try_start_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 574
    :cond_8
    :goto_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_0

    .line 467
    .end local v3           #maxFileSize:J
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 469
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v8, "CamcorderEngine"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 507
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->createVideoPath()V

    .line 508
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 544
    .restart local v3       #maxFileSize:J
    :cond_a
    const-wide/32 v8, 0xed800

    cmp-long v8, v6, v8

    if-lez v8, :cond_7

    .line 545
    const-wide/32 v3, 0xed800

    goto :goto_4

    .line 553
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 554
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "CamcorderEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxFileSize failed (maxFileSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v8, "CamcorderEngine"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    goto :goto_5

    .line 562
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 563
    .local v0, e:Ljava/io/IOException;
    const-string v8, "CamcorderEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepare failed for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v8, "CamcorderEngine"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 567
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 568
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 571
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v9, -0x4

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    .line 497
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #maxFileSize:J
    :catch_3
    move-exception v8

    goto/16 :goto_2
.end method

.method private readVideoPreferences()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-string v7, "android.intent.extra.videoQuality"

    const-string v6, "android.intent.extra.durationLimit"

    .line 1297
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v3

    .line 1300
    .local v3, videoQuality:I
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1301
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1302
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1303
    .local v0, extraVideoQuality:I
    if-nez v0, :cond_1

    move v3, v5

    .line 1308
    .end local v0           #extraVideoQuality:I
    :cond_0
    :goto_0
    iput v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 1309
    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1310
    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1311
    .local v2, seconds:I
    mul-int/lit16 v4, v2, 0x3e8

    iput v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 1317
    .end local v2           #seconds:I
    :goto_1
    new-instance v4, Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v4, v5, v3}, Lcom/sec/android/app/camera/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 1318
    return-void

    .line 1303
    .restart local v0       #extraVideoQuality:I
    :cond_1
    const/4 v4, 0x2

    move v3, v4

    goto :goto_0

    .line 1314
    .end local v0           #extraVideoQuality:I
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getMaxVideoDurationInMs()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    goto :goto_1
.end method

.method private registerVideo()V
    .locals 8

    .prologue
    const-string v7, "CamcorderEngine"

    .line 1204
    const-string v3, "CamcorderEngine"

    const-string v3, "registerVideo"

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v3, :cond_0

    .line 1207
    const-string v3, "content://media/external/video/media"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1208
    .local v2, videoTable:Landroid/net/Uri;
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "_size"

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1209
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "duration"

    iget-wide v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1210
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "resolution"

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 1217
    const-string v3, "CamcorderEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current video URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1235
    .end local v2           #videoTable:Landroid/net/Uri;
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1236
    return-void

    .line 1219
    .restart local v2       #videoTable:Landroid/net/Uri;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1220
    .local v1, sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "CamcorderEngine"

    const-string v3, "Not enough space in database"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v4, 0x7f070108

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1222
    .end local v1           #sfe:Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 1223
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CamcorderEngine"

    const-string v3, "insert failed"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1231
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #videoTable:Landroid/net/Uri;
    :cond_0
    const-string v3, "CamcorderEngine"

    const-string v3, "saving file with provided intent uri"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v3, Lcom/sec/android/app/camera/Camcorder;

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->saveUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private renameTempFile()V
    .locals 3

    .prologue
    .line 1198
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1199
    .local v1, src:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1200
    .local v0, dest:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1201
    return-void
.end method


# virtual methods
.method public doCancelVideoRecordingSync()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v7, "CamcorderEngine"

    .line 863
    const-string v4, "CamcorderEngine"

    const-string v4, "doCancelVideoRecordingSync"

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const-string v4, "CamcorderEngine"

    const-string v4, "Cancelling VideoRecording..."

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-boolean v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v4, :cond_0

    .line 868
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 869
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 870
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->stop()V

    .line 871
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->reset()V

    .line 872
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 878
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 888
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 890
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_2

    .line 891
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 892
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 894
    .local v2, myExtras:Landroid/os/Bundle;
    iget-boolean v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 895
    const-string v4, "output"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 896
    .local v3, saveUri:Landroid/net/Uri;
    const-string v4, "CamcorderEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting cancelled video file ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :try_start_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/net/URI;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 903
    .end local v3           #saveUri:Landroid/net/Uri;
    :cond_1
    :goto_1
    iput-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    .line 907
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #myExtras:Landroid/os/Bundle;
    :cond_2
    iput-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 909
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    .line 911
    const-string v4, "CamcorderEngine"

    const-string v4, "Cancelling VideoRecording is completed!"

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    return-void

    .line 873
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 874
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "CamcorderEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 899
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #myExtras:Landroid/os/Bundle;
    .restart local v3       #saveUri:Landroid/net/Uri;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public doChangeParameterSync(Ljava/lang/Object;)V
    .locals 6
    .parameter "param"

    .prologue
    const/16 v5, 0xb

    const-string v3, "CamcorderEngine"

    .line 355
    const-string v2, "CamcorderEngine"

    const-string v2, "doChangeParameterSync"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 358
    const-string v2, "CamcorderEngine"

    const-string v2, "returning because mCameraDevice is null!"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_0
    return-void

    .line 362
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    move-object v1, v0

    .line 364
    .local v1, p:Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 398
    :goto_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_1

    .line 399
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v2

    if-ltz v2, :cond_2

    .line 400
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 366
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 369
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 372
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 375
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 378
    :sswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 381
    :sswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 384
    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 392
    :sswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 403
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 364
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0x67 -> :sswitch_1
        0x68 -> :sswitch_0
        0x69 -> :sswitch_2
        0x6b -> :sswitch_4
        0x6c -> :sswitch_3
        0x6d -> :sswitch_7
        0x6e -> :sswitch_7
        0x70 -> :sswitch_7
        0x72 -> :sswitch_7
        0x73 -> :sswitch_7
        0x74 -> :sswitch_7
    .end sparse-switch
.end method

.method public doPauseVideoRecordingSync()V
    .locals 3

    .prologue
    const-string v2, "CamcorderEngine"

    .line 758
    const-string v1, "CamcorderEngine"

    const-string v1, "doPauseVideoRecordingSync"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 761
    const-string v1, "CamcorderEngine"

    const-string v1, "MediaRecorder is not initialized."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :goto_0
    return-void

    .line 765
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 766
    const-string v1, "CamcorderEngine"

    const-string v1, "Recording is not started yet."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 771
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_0

    .line 772
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 773
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v1, "Could not pause media recorder. "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_0
.end method

.method public doPrepareVideoRecordingAsync()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "continuous_af"

    const-string v1, "CamcorderEngine"

    .line 603
    const-string v0, "CamcorderEngine"

    const-string v0, "doPrepareVideoRecordingAsync"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 606
    const-string v0, "CamcorderEngine"

    const-string v0, "mMediaRecorder is already initialized."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v0, "CamcorderEngine"

    const-string v0, "Releasing mMediaRecorder..."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    .line 613
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 614
    const-string v0, "CamcorderEngine"

    const-string v0, "CamcorderParameters is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 640
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous_af"

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 625
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 629
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->setZoomBlocked(Z)V

    .line 631
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$2;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 638
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    const-string v1, "PrepareRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 622
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous_af"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public doResumeVideoRecordingSync()V
    .locals 3

    .prologue
    const-string v2, "CamcorderEngine"

    .line 788
    const-string v1, "CamcorderEngine"

    const-string v1, "doResumeVideoRecordingSync"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 791
    const-string v1, "CamcorderEngine"

    const-string v1, "MediaRecorder is not initialized."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :goto_0
    return-void

    .line 795
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 796
    const-string v1, "CamcorderEngine"

    const-string v1, "Recording is not started yet."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 801
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->disableAlertSound()V

    goto :goto_0

    .line 802
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 803
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v1, "Could not resume media recorder. "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public doSetAllParamsSync()V
    .locals 0

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->initialize()V

    .line 352
    return-void
.end method

.method public doStartEngineAsync()V
    .locals 3

    .prologue
    .line 279
    const-string v1, "CamcorderEngine"

    const-string v2, "doStartEngineAsync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 284
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v1, :cond_0

    .line 285
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 288
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 290
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CamcorderEngine$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine$1;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    const-string v2, "openCamcorderThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 322
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 323
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 324
    return-void
.end method

.method public doStartPreviewAsync()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v3, "CamcorderEngine"

    .line 915
    const-string v2, "CamcorderEngine"

    const-string v2, "doStartPreviewAsync"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_0

    .line 918
    const-string v2, "CamcorderEngine"

    const-string v2, "return because mSurfaceHolder is null."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :goto_0
    return-void

    .line 922
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 923
    const-string v2, "CamcorderEngine"

    const-string v2, "return because mCameraDevice is null."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 927
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->resetPreviewSize()V

    .line 930
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)V

    .line 944
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 947
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 948
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 953
    :goto_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CamcorderEngine$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine$4;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 968
    .local v1, startPreviewThread:Ljava/lang/Thread;
    const-string v2, "startPreviewThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 970
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    goto :goto_0

    .line 931
    .end local v1           #startPreviewThread:Ljava/lang/Thread;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 932
    .local v0, exception:Ljava/io/IOException;
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 933
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    .line 936
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 937
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 950
    .end local v0           #exception:Ljava/io/IOException;
    :cond_2
    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    goto :goto_1
.end method

.method public doStartVideoRecordingAsync()V
    .locals 4

    .prologue
    const-wide/16 v1, 0x0

    const-string v3, "CamcorderEngine"

    .line 651
    const-string v0, "CamcorderEngine"

    const-string v0, "doStartVideoRecordingAsync"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iput-wide v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    .line 653
    iput-wide v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 659
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :cond_0
    :goto_0
    const-string v0, "CamcorderEngine"

    const-string v0, "start video recording"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v0, :cond_1

    .line 669
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$3;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    const-string v1, "StartRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 714
    :cond_1
    return-void

    .line 662
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doStopEngineSync()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 327
    const-string v1, "CamcorderEngine"

    const-string v2, "doStopEngineSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 331
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 336
    .local v0, holder:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_1

    .line 337
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 341
    .end local v0           #holder:Landroid/view/SurfaceHolder;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    .line 343
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 344
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    .line 347
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 348
    return-void
.end method

.method public doStopPreviewSync()V
    .locals 2

    .prologue
    .line 974
    const-string v0, "CamcorderEngine"

    const-string v1, "doStopPreviewSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 980
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 981
    return-void
.end method

.method public doStopVideoRecordingSync()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string v5, "CamcorderEngine"

    .line 816
    const-string v1, "CamcorderEngine"

    const-string v1, "doStopVideoRecordingSync"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const-string v1, "CamcorderEngine"

    const-string v1, "Stopping VideoRecording..."

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 821
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 822
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 823
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 824
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 825
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->renameTempFile()V

    .line 840
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 841
    const-string v1, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting current video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 843
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 844
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->registerVideo()V

    .line 847
    :cond_0
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 848
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    .line 850
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    .line 851
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainStorageIndicator()V

    .line 853
    const-string v1, "CamcorderEngine"

    const-string v1, "Stopping VideoRecording is completed!"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :goto_0
    return-void

    .line 826
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 827
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 829
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 831
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 832
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 833
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    .line 835
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_0
.end method

.method public doWaitForSurfaceAsync()V
    .locals 2

    .prologue
    const-string v1, "CamcorderEngine"

    .line 583
    const-string v0, "CamcorderEngine"

    const-string v0, "doWaitForSurfaceAsync"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 586
    const-string v0, "CamcorderEngine"

    const-string v0, "mSurfaceHolder is already created!!!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 592
    :goto_0
    return-void

    .line 589
    :cond_0
    const-string v0, "CamcorderEngine"

    const-string v0, "start waiting for mSurfaceHolder..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    goto :goto_0
.end method

.method public getCurrentVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProfile()Lcom/sec/android/app/camera/MediaRecorderProfile;
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 434
    const-string v0, "CamcorderEngine"

    const-string v1, "getMediaProfile: mCameraSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v0, 0x0

    .line 443
    :goto_0
    return-object v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    goto :goto_0

    .line 442
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 443
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    goto :goto_0
.end method

.method public getRemainTime()I
    .locals 5

    .prologue
    .line 1374
    const/4 v1, 0x0

    .line 1375
    .local v1, nBitrate:I
    const/4 v3, 0x0

    .line 1376
    .local v3, nVideoBitrate:I
    const/4 v0, 0x0

    .line 1377
    .local v0, nAudioBitrate:I
    const/4 v2, 0x0

    .line 1379
    .local v2, nRemainTime:I
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->readVideoPreferences()V

    .line 1380
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v3, v4, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    .line 1382
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1383
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v4, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    .line 1386
    :cond_0
    add-int v4, v3, v0

    div-int/lit8 v1, v4, 0x8

    .line 1387
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/CheckMemory;->getRemainTime(II)I

    move-result v2

    .line 1389
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 1391
    return v2
.end method

.method public getVideoFileLengthInByte()J
    .locals 2

    .prologue
    .line 1321
    iget-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    return-wide v0
.end method

.method public getVideoRecordingTimeInSecond()I
    .locals 4

    .prologue
    .line 1325
    iget-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getZoomBlocked()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mZoomIsBlocked:Z

    return v0
.end method

.method public handleVideoRecordingStarted()V
    .locals 2

    .prologue
    .line 717
    const-string v0, "CamcorderEngine"

    const-string v1, "handleVideoRecordingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->setZoomBlocked(Z)V

    .line 719
    iget-object p0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->onVideoRecordingStarted()V

    .line 720
    return-void
.end method

.method public initialize()V
    .locals 7

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x0

    const-string v6, "on"

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 147
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x67

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x6c

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x6b

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderWB()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x70

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x6d

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x6e

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutocontrast()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x72

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderContrast()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x73

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x74

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video_recording_gamma"

    const-string v3, "on"

    invoke-virtual {v1, v2, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "slow_ae"

    const-string v3, "on"

    invoke-virtual {v1, v2, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "60hz"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "AppShutterSound"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 191
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isMediaRecorderRecording()Z
    .locals 1

    .prologue
    .line 1370
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isPrepareRecording()Z
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    :cond_0
    const/4 v0, 0x1

    .line 429
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x1

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 989
    sparse-switch p1, :sswitch_data_0

    .line 1025
    :goto_0
    :sswitch_0
    return-void

    .line 1000
    :sswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    goto :goto_0

    .line 1013
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 1014
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CameraEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_0

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p2}, Landroid/media/MediaRecorder;->setZoom(I)V

    .line 1017
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 1022
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->searchForInitialLastContentUri()V

    goto :goto_0

    .line 989
    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_3
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x67 -> :sswitch_1
        0x68 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6a -> :sswitch_0
        0x6b -> :sswitch_1
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x6e -> :sswitch_1
        0x6f -> :sswitch_0
        0x70 -> :sswitch_2
        0x72 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_1
    .end sparse-switch
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const-string v1, "CamcorderEngine"

    .line 1333
    const-string v0, "CamcorderEngine"

    const-string v0, "onError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1336
    const-string v0, "CamcorderEngine"

    const-string v0, "MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 1339
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1340
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->finishRecordingWithError()V

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 1348
    :goto_0
    return-void

    .line 1341
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1342
    const-string v0, "CamcorderEngine"

    const-string v0, "MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->RecordingFailed()V

    .line 1344
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x2

    .line 1351
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 1353
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1355
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_2

    .line 1356
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 1357
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1359
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f07000c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1361
    :cond_2
    const/16 v0, 0x322

    if-ne p2, v0, :cond_3

    .line 1362
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    goto :goto_0

    .line 1364
    :cond_3
    const/16 v0, 0x323

    if-ne p2, v0, :cond_0

    .line 1365
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    goto :goto_0
.end method

.method public releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1096
    const-string v0, "CamcorderEngine"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1098
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupEmptyFile()V

    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1100
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1101
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1102
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 1105
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 1107
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->setZoomBlocked(Z)V

    .line 1108
    return-void
.end method

.method protected resetPreviewSize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v4, "CamcorderEngine"

    .line 1028
    const-string v2, "CamcorderEngine"

    const-string v2, "resetPreviewSize()"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1057
    :pswitch_0
    const/16 v1, 0x280

    .line 1058
    .local v1, previewWidth:I
    const/16 v0, 0x1e0

    .line 1062
    .local v0, previewHeight:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1064
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 1065
    const/16 v1, 0x280

    .line 1066
    const/16 v0, 0x1e0

    .line 1074
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_2

    .line 1075
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1081
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 1082
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1087
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_4

    .line 1088
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1093
    :goto_3
    return-void

    .line 1033
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    :pswitch_1
    const/16 v1, 0x320

    .line 1034
    .restart local v1       #previewWidth:I
    const/16 v0, 0x1c0

    .line 1035
    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 1037
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    :pswitch_2
    const/16 v1, 0x320

    .line 1038
    .restart local v1       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1039
    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 1041
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    :pswitch_3
    const/16 v1, 0x2d0

    .line 1042
    .restart local v1       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1043
    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 1045
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    :pswitch_4
    const/16 v1, 0x280

    .line 1046
    .restart local v1       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1047
    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 1049
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    :pswitch_5
    const/16 v1, 0x280

    .line 1050
    .restart local v1       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1051
    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 1053
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    :pswitch_6
    const/16 v1, 0x250

    .line 1054
    .restart local v1       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1055
    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 1069
    :cond_1
    const/16 v1, 0x250

    .line 1070
    const/16 v0, 0x1e0

    goto :goto_1

    .line 1077
    :cond_2
    const-string v2, "CamcorderEngine"

    const-string v2, "resetPreviewSize()- mParameters is null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1084
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto :goto_2

    .line 1090
    :cond_4
    const-string v2, "CamcorderEngine"

    const-string v2, "resetPreviewSize()- mCameraDevice is null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1031
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public scheduleCancelVideoRecording()V
    .locals 3

    .prologue
    .line 857
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleCancelVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 860
    return-void
.end method

.method public schedulePauseVideoRecording()V
    .locals 3

    .prologue
    .line 752
    const-string v0, "CamcorderEngine"

    const-string v1, "schedulePauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 755
    return-void
.end method

.method public schedulePrepareVideoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 595
    const-string v0, "CamcorderEngine"

    const-string v1, "schedulePrepareVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 600
    :cond_0
    return-void
.end method

.method public scheduleResumeVideoRecording()V
    .locals 3

    .prologue
    .line 782
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleResumeVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 785
    return-void
.end method

.method public scheduleStartVideoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x66

    .line 643
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleStartVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 648
    :cond_0
    return-void
.end method

.method public scheduleStopVideoRecording()V
    .locals 3

    .prologue
    .line 810
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleStopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 813
    return-void
.end method

.method public scheduleWaitForSurface()V
    .locals 3

    .prologue
    .line 578
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleWaitForSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 580
    return-void
.end method

.method public searchForInitialLastContentUri()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const-string v9, "_id"

    .line 1277
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v9, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 1279
    .local v2, projection:[Ljava/lang/String;
    const-string v5, "datetaken DESC"

    .line 1281
    .local v5, sortOrder:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1283
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearLastContentUri()V

    .line 1285
    if-eqz v6, :cond_1

    .line 1286
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    const-string v0, "_id"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1288
    .local v7, videoId:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1289
    .local v8, videoIdName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 1290
    iget-object p0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateQuickViewButtonDimmed()V

    .line 1292
    .end local v7           #videoId:I
    .end local v8           #videoIdName:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1294
    :cond_1
    return-void
.end method

.method protected searchForLastContentUri()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1239
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 1273
    :goto_0
    return-void

    .line 1243
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1244
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1246
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 1247
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1249
    .local v8, idIndex:I
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1251
    .local v7, dataIndex:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 1253
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    .line 1254
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1255
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1258
    .end local v7           #dataIndex:I
    .end local v8           #idIndex:I
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    if-eqz v0, :cond_3

    .line 1259
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_2

    .line 1260
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1263
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 1264
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1269
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1266
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto :goto_1

    .line 1271
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method public setIsVideoCaptureIntent(Z)Z
    .locals 3
    .parameter "chkIsVideoCaptureIntent"

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    .line 413
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVideoCaptureIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method public setZoomBlocked(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mZoomIsBlocked:Z

    .line 133
    return-void
.end method

.method public startingPreviewCompleted()V
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->setZoomBlocked(Z)V

    .line 985
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onStartingPreviewCompleted()V

    .line 986
    return-void
.end method

.method public waitForStartRecordingThreadComplete()V
    .locals 1

    .prologue
    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :cond_1
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    goto :goto_0
.end method
