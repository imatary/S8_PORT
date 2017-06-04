.class public Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;
.super Ljava/lang/Object;
.source "DCSelectionParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter$Builder;
    }
.end annotation


# instance fields
.field private mAlbumName:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mExecutingStateId:Ljava/lang/String;

.field private mOrdinal:I

.field private mSelectCount:I

.field private mSelectOrderType:I

.field private mSharedType:Ljava/lang/String;

.field private mStoryName:Ljava/lang/String;

.field private mUseOrdinal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutingStateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mExecutingStateId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdinal()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mOrdinal:I

    return v0
.end method

.method public getSelectCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mSelectCount:I

    return v0
.end method

.method public getSelectOrderType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mSelectOrderType:I

    return v0
.end method

.method public getSharedType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mSharedType:Ljava/lang/String;

    return-object v0
.end method

.method public getStoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mStoryName:Ljava/lang/String;

    return-object v0
.end method

.method public isUseOrdinal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mUseOrdinal:Z

    return v0
.end method

.method public setAlbumName(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mAlbumName:Ljava/lang/String;

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public setExecutingStateId(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mExecutingStateId:Ljava/lang/String;

    return-object p0
.end method

.method public setOrdinal(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;
    .locals 1

    iput p1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mOrdinal:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mUseOrdinal:Z

    return-object p0
.end method

.method public setSelectCount(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;
    .locals 0

    iput p1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mSelectCount:I

    return-object p0
.end method

.method public setSelectOrderType(I)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;
    .locals 0

    iput p1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mSelectOrderType:I

    return-object p0
.end method

.method public setSharedType(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mSharedType:Ljava/lang/String;

    return-object p0
.end method

.method public setStoryName(Ljava/lang/String;)Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->mStoryName:Ljava/lang/String;

    return-object p0
.end method
