.class Lcom/sec/android/app/camera/Camcorder$1;
.super Landroid/content/BroadcastReceiver;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const v8, 0x7f0700ca

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v5, "Camcorder"

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, action:Ljava/lang/String;
    const-string v3, "Camcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$000(Lcom/sec/android/app/camera/Camcorder;)Z

    move-result v3

    if-ne v3, v6, :cond_1

    .line 136
    const-string v3, "Camcorder"

    const-string v3, "onReceive - camcorder is destroying"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 142
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/MenuResourceData;

    move-result-object v3

    const v4, 0x7f030038

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v5, v5, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/StorageMenu;

    .line 143
    .local v1, menu:Lcom/sec/android/app/camera/StorageMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/StorageMenu;->getVisibility()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 149
    :cond_3
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 150
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->searchForInitialLastContentUri()V

    .line 151
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mUpdateHandler:Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;

    if-eqz v3, :cond_4

    .line 152
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mUpdateHandler:Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;->sendEmptyMessage(I)Z

    .line 154
    :cond_4
    const v3, 0x7f0700d3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, str:Ljava/lang/String;
    invoke-static {p1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 156
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_0

    .line 167
    .end local v1           #menu:Lcom/sec/android/app/camera/StorageMenu;
    .end local v2           #str:Ljava/lang/String;
    :cond_5
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 168
    const v3, 0x7f0700d1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .restart local v2       #str:Ljava/lang/String;
    invoke-static {p1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 171
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 173
    .end local v2           #str:Ljava/lang/String;
    :cond_6
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 174
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camcorder;->access$200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->searchForInitialLastContentUri()V

    .line 175
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->updateQuickViewButtonDimmed()V

    goto/16 :goto_0

    .line 180
    :cond_7
    const-string v3, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 181
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->updateRemainStorageIndicator()V

    goto/16 :goto_0

    .line 182
    :cond_8
    const-string v3, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 183
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v3, p2}, Lcom/sec/android/app/camera/Camcorder;->access$300(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 184
    :cond_9
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 185
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {v3, p2}, Lcom/sec/android/app/camera/Camcorder;->access$400(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 186
    :cond_a
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 187
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery()V

    goto/16 :goto_0

    .line 188
    :cond_b
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 191
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 192
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder$1;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto/16 :goto_0
.end method
