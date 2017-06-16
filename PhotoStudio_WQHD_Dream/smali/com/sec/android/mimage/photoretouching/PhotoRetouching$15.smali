.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-static {p2}, Lcom/sec/android/mimage/photoretouching/service/IFinishService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    move-result-object v1

    # setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mFinishService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$902(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Lcom/sec/android/mimage/photoretouching/service/IFinishService;)Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$15;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mFinishService:Lcom/sec/android/mimage/photoretouching/service/IFinishService;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$902(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Lcom/sec/android/mimage/photoretouching/service/IFinishService;)Lcom/sec/android/mimage/photoretouching/service/IFinishService;

    return-void
.end method
