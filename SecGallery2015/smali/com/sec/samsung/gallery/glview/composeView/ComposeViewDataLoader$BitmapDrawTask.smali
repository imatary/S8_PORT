.class Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$BitmapDrawTask;
.super Landroid/os/AsyncTask;
.source "ComposeViewDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapDrawTask"
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
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$BitmapDrawTask;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$BitmapDrawTask;-><init>(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$BitmapDrawTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const/16 v0, 0x9

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "TimeViewState_Bitmap_Draw"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$BitmapDrawTask;->this$0:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    const/4 v1, 0x0

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->loadData(Z)Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;Z)Z

    const/4 v0, 0x0

    return-object v0
.end method
