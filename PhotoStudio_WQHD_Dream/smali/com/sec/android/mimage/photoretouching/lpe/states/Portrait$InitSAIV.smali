.class Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;
.super Landroid/os/AsyncTask;
.source "Portrait.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitSAIV"
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
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;


# direct methods
.method private constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait$InitSAIV;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->initEyeDetection()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;->access$2900(Lcom/sec/android/mimage/photoretouching/lpe/states/Portrait;)V

    const/4 v0, 0x0

    return-object v0
.end method
