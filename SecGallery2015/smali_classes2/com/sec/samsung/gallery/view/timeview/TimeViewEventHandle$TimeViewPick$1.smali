.class Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick$1;
.super Ljava/lang/Object;
.source "TimeViewEventHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->onItemClick(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick$1;->this$1:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick$1;->this$1:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;->access$702(Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle$TimeViewPick;Z)Z

    return-void
.end method
