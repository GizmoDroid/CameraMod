.class Lcom/sec/android/app/camera/CamcorderEngine$1;
.super Ljava/lang/Object;
.source "CamcorderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CamcorderEngine;->doStartEngineAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CamcorderEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const-string v3, "CamcorderEngine"

    .line 292
    const-string v1, "CamcorderEngine"

    const-string v1, "opening camera device..."

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$002(Lcom/sec/android/app/camera/CamcorderEngine;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$000(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$100(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 301
    const-string v1, "CamcorderEngine"

    const-string v1, "camera device is opened."

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$000(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->access$202(Lcom/sec/android/app/camera/CamcorderEngine;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 304
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-static {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->access$200(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-nez v1, :cond_0

    .line 305
    const-string v1, "CamcorderEngine"

    const-string v1, "CamcorderParameters is null"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 311
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 296
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CamcorderEngine"

    const-string v1, "service cannot connect. critical exception occured."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 310
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine$1;->this$0:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CamcorderEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
