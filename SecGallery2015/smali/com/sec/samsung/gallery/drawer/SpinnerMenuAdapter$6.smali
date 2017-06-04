.class Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$6;
.super Ljava/lang/Thread;
.source "SpinnerMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->doPostJob()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$6;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$6;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    # invokes: Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->postCreateGroup()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$800(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$6;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    # invokes: Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->postInitializeGroup()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$900(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter$6;->this$0:Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;

    # invokes: Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->postResume()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;->access$1000(Lcom/sec/samsung/gallery/drawer/SpinnerMenuAdapter;)V

    return-void
.end method
