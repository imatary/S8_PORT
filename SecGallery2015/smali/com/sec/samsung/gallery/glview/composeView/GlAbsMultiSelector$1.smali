.class Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$1;
.super Ljava/lang/Object;
.source "GlAbsMultiSelector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I
    .locals 2

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getIndex()I
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v0

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getIndex()I
    invoke-static {p2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getIndex()I
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v0

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->getIndex()I
    invoke-static {p2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    check-cast p2, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$1;->compare(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$Candidate;)I

    move-result v0

    return v0
.end method
