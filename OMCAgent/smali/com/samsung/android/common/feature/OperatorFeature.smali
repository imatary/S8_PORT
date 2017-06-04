.class public Lcom/samsung/android/common/feature/OperatorFeature;
.super Ljava/lang/Object;
.source "OperatorFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;
    }
.end annotation


# static fields
.field public static final mMultiCscCode:Ljava/lang/String;

.field public static final mOperator:Ljava/lang/String;

.field public static final mSalesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/common/feature/OperatorFeature;->getOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/common/feature/OperatorFeature;->mOperator:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/common/feature/OperatorFeature;->getMultiCscCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/common/feature/OperatorFeature;->mMultiCscCode:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/common/feature/OperatorFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/common/feature/OperatorFeature;->mSalesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMultiCscCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->getInstance()Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->getMultiCscCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOperator()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SyncML_SupportMultiGroupToOneID"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->getInstance()Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->getOperator()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getSalesCode()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->getInstance()Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->getOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChinaOperator()Z
    .locals 2

    const-string v0, "CTC/CHN/CHM/CHU/CHC"

    sget-object v1, Lcom/samsung/android/common/feature/OperatorFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDCMOperator()Z
    .locals 2

    const-string v0, "DCM"

    sget-object v1, Lcom/samsung/android/common/feature/OperatorFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFotaAgreedInWriting()Z
    .locals 2

    const-string v0, "TMB"

    sget-object v1, Lcom/samsung/android/common/feature/OperatorFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHKTWOperator()Z
    .locals 2

    const-string v0, "TGY/BRI"

    sget-object v1, Lcom/samsung/android/common/feature/OperatorFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKoreaANYOperator()Z
    .locals 2

    const-string v0, "ANY/KOO"

    sget-object v1, Lcom/samsung/android/common/feature/OperatorFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKoreaAllOperator()Z
    .locals 2

    const-string v0, "SKT/SKC/SKO/KT/KTC/KTO/LG/LUC/LUO/KOO"

    sget-object v1, Lcom/samsung/android/common/feature/OperatorFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKoreaLGTOperator()Z
    .locals 2

    const-string v0, "LG/LUC/LUO"

    sget-object v1, Lcom/samsung/android/common/feature/OperatorFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKoreaSKTOperator()Z
    .locals 2

    const-string v0, "SKT/SKC/SKO"

    sget-object v1, Lcom/samsung/android/common/feature/OperatorFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KT"

    sget-object v1, Lcom/samsung/android/common/feature/OperatorFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSBMOperator()Z
    .locals 2

    const-string v0, "SBM"

    sget-object v1, Lcom/samsung/android/common/feature/OperatorFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTMOOperator()Z
    .locals 2

    const-string v0, "TMB"

    sget-object v1, Lcom/samsung/android/common/feature/OperatorFeature;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needLocalFotaDisclaimerAgree()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/common/feature/OperatorFeature;->isKoreaAllOperator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
