.class Lcom/sec/android/app/camera/CameraEngine$1;
.super Ljava/lang/Object;
.source "CameraEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraEngine;->searchForInitialLastContentUri()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$1;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v10, 0x1

    const-string v11, "_id"

    .line 758
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v11, v2, v1

    const-string v0, "title"

    aput-object v0, v2, v10

    .line 759
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "mime_type = ? OR mime_type = ? OR mime_type = ?"

    .line 762
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "image/jpeg"

    aput-object v0, v4, v1

    const-string v0, "image/png"

    aput-object v0, v4, v10

    const-string v0, "image/gif"

    aput-object v0, v4, v9

    .line 763
    .local v4, argument:[Ljava/lang/String;
    const-string v5, "datetaken DESC"

    .line 765
    .local v5, sortOrder:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/camera/CameraEngine;->access$1300()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 767
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$1;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearLastContentUri()V

    .line 769
    if-eqz v6, :cond_1

    .line 770
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const-string v0, "_id"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 772
    .local v7, imageId:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 773
    .local v8, imageIdName:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$1;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$1;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$1;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->sendEmptyMessage(I)Z

    .line 779
    .end local v7           #imageId:I
    .end local v8           #imageIdName:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 781
    :cond_1
    return-void
.end method
