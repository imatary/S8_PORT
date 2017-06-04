.class public Lcom/samsung/android/devicecog/gallery/viewstatehandler/GalleryDummyDCHandler;
.super Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
.source "GalleryDummyDCHandler.java"


# direct methods
.method public constructor <init>(Ljava/util/Observer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    return-void
.end method


# virtual methods
.method protected checkMenuOptionEnabled(I)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->checkMenuOptionEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected createDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->createDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;)V

    return-void
.end method

.method protected enterSelectedView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    return-void
.end method

.method protected getNewStoryName(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSelectCount(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectOrderType(ILjava/lang/String;)I
    .locals 0

    return p1
.end method

.method protected handleCreateStoryPopUp(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected handleRenamePopUp(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected handleSelectedView(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected handleShare(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected handleSortBy(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->handleSortBy(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected handleStartDetailView(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected isMultiPickMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPickMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public logDCSelectedView(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public sendDCResponseForEnterDetailView()V
    .locals 0

    return-void
.end method

.method public sendDCResponseForEnterDetailViewIfContentTypeNotMatched()V
    .locals 0

    return-void
.end method

.method public sendDCResponseForLaunch()V
    .locals 0

    return-void
.end method

.method public sendDCResponseForNoItem(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendDCResponseForSelectContentType(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method
