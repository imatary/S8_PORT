.class public Lcom/sec/samsung/gallery/glview/composeView/GlPenMultiSelector;
.super Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;
.source "GlPenMultiSelector.java"


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;)V

    return-void
.end method


# virtual methods
.method public select(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenMultiSelector;->pause()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenMultiSelector;->updateCandidatesRect()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenMultiSelector;->prepareActiveCandidate()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenMultiSelector;->FindStrongCandidates()V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlPenMultiSelector;->selectActiveCandidate(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->selectComplete(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenMultiSelector;->mModel:Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector$MultiSeletorModel;->selectComplete(Z)V

    goto :goto_0
.end method

.method selectActiveCandidate(Z)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->selectActiveCandidate(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenMultiSelector;->select(Z)V

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->stop()V

    return-void
.end method
