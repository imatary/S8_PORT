.class Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$SecImageLoader;
.super Landroid/os/AsyncTask;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecImageLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$SecImageLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$SecImageLoader;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$SecImageLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$SecImageLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$SecImageLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$SecImageLoader;->cancel(Z)Z

    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$SecImageLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->initGPU()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$SecImageLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$SecImageLoader;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Effects;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$ThumbReloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
