.class Lcom/sec/android/app/camera/MenuHelper$14;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/MenuHelper;->addImageMenuItems(Landroid/view/Menu;ILandroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;)Lcom/sec/android/app/camera/MenuHelper$MenuItemsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$onDelete:Ljava/lang/Runnable;

.field final synthetic val$onInvoke:Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 774
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuHelper$14;->val$onInvoke:Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;

    iput-object p2, p0, Lcom/sec/android/app/camera/MenuHelper$14;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/camera/MenuHelper$14;->val$onDelete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuHelper$14;->val$onInvoke:Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuHelper$14;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuHelper$14;->val$onDelete:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/MenuHelper;->access$900(Lcom/sec/android/app/camera/MenuHelper$MenuInvoker;Landroid/app/Activity;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
