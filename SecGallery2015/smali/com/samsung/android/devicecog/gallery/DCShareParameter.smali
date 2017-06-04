.class public Lcom/samsung/android/devicecog/gallery/DCShareParameter;
.super Ljava/lang/Object;
.source "DCShareParameter.java"


# instance fields
.field private mAfterNlg:Z

.field private mAnaphoraForShare:Ljava/lang/String;

.field private mChoiceTypeForShare:Ljava/lang/String;

.field private mDefaultPackageForShare:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mDefaultPackageForShare:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mChoiceTypeForShare:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mAnaphoraForShare:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mAfterNlg:Z

    return-void
.end method


# virtual methods
.method public getAfterNlg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mAfterNlg:Z

    return v0
.end method

.method public getAnaphoraForShare()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mAnaphoraForShare:Ljava/lang/String;

    return-object v0
.end method

.method public getChoiceTypeForShare()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mChoiceTypeForShare:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultPackageForShare()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mDefaultPackageForShare:Ljava/lang/String;

    return-object v0
.end method

.method public resetParameter()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mDefaultPackageForShare:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mChoiceTypeForShare:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mAnaphoraForShare:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mAfterNlg:Z

    return-void
.end method

.method public setAfterNlg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mAfterNlg:Z

    return-void
.end method

.method public setAnaphoraForShare(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mAnaphoraForShare:Ljava/lang/String;

    return-void
.end method

.method public setChoiceTypeForShare(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mChoiceTypeForShare:Ljava/lang/String;

    return-void
.end method

.method public setDefaultPackageForShare(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->mDefaultPackageForShare:Ljava/lang/String;

    return-void
.end method
