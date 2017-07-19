.class Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;
.super Ljava/lang/Object;
.source "MultiLockCropActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->initConnection(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    iput-object p2, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {p2}, Lcom/samsung/android/thememanager/IThemeManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-set0(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;Lcom/samsung/android/thememanager/IThemeManager;)Lcom/samsung/android/thememanager/IThemeManager;

    const-string/jumbo v0, "Cropper2_MultiLock"

    const-string/jumbo v1, "Binding is done - Service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-get4(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Lcom/samsung/android/thememanager/IThemeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/thememanager/IThemeManager;->getWallpaperFilePath(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {v3}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-get5(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {v0, v2}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-set1(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "Cropper2_MultiLock"

    const-string/jumbo v1, "image uri list is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_MultiLock"

    const-string/jumbo v3, "Service connection error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "Cropper2_MultiLock"

    const-string/jumbo v3, "Service connection error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    const-string/jumbo v3, "Cropper2_MultiLock"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "image "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {v3}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-get1(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {v3}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-get6(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/sec/android/multilock/ThumbnailInfo;

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-direct {v4, v5, v0, v2}, Lcom/sec/android/multilock/ThumbnailInfo;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-wrap0(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity$1;->this$0:Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->-set0(Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;Lcom/samsung/android/thememanager/IThemeManager;)Lcom/samsung/android/thememanager/IThemeManager;

    const-string/jumbo v0, "Cropper2_MultiLock"

    const-string/jumbo v1, "Binding - Service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
