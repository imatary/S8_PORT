.class public Lcom/sec/android/secvision/segmentation/ScribbleHistory;
.super Ljava/util/ArrayList;
.source "ScribbleHistory.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sec/android/secvision/segmentation/ScribblePath;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_ScribbleHistory"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private redoStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/secvision/segmentation/ScribblePath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->redoStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public add(Lcom/sec/android/secvision/segmentation/ScribblePath;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->redoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/sec/android/secvision/segmentation/ScribblePath;

    invoke-virtual {p0, p1}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->add(Lcom/sec/android/secvision/segmentation/ScribblePath;)Z

    move-result v0

    return v0
.end method

.method public canRedo()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->redoStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUndo()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public dump()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "history size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redo stack size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->redoStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLast()Lcom/sec/android/secvision/segmentation/ScribblePath;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/secvision/segmentation/ScribblePath;

    goto :goto_0
.end method

.method public popLast()Lcom/sec/android/secvision/segmentation/ScribblePath;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->getLast()Lcom/sec/android/secvision/segmentation/ScribblePath;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->removeLast()V

    return-object v0
.end method

.method public redo()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->redoStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/secvision/segmentation/ScribblePath;

    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeLast()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public undo()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->popLast()Lcom/sec/android/secvision/segmentation/ScribblePath;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->redoStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
