.class Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;
.super Ljava/lang/Object;
.source "OperatorFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/common/feature/OperatorFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OperatorFeatureBase"
.end annotation


# static fields
.field public static final CUST_CODE_LOCATION:Ljava/lang/String; = "/system/omc/code"

.field public static final MPS_CODE_DAT_LOCATION:Ljava/lang/String; = "/efs/imei/mps_code.dat"

.field public static final PRODUCTCODE_LTN_MOVISTAR_LIST:Ljava/lang/String; = "TMM/UFN/UFU/COB/CHT/SAM/VMT/TGU/SAL/NBS/PBS/EBE/CRM"

.field public static final SALESCODE_CHINA_LIST:Ljava/lang/String; = "CTC/CHN/CHM/CHU/CHC"

.field private static final SALESCODE_CSC:Ljava/lang/String; = "ro.csc.sales_code"

.field public static final SALESCODE_DCM:Ljava/lang/String; = "DCM"

.field public static final SALESCODE_HKTW_LIST:Ljava/lang/String; = "TGY/BRI"

.field public static final SALESCODE_KOR_ALL_LIST:Ljava/lang/String; = "SKT/SKC/SKO/KT/KTC/KTO/LG/LUC/LUO/KOO"

.field public static final SALESCODE_KOR_ANY_ALL_LIST:Ljava/lang/String; = "ANY/KOO"

.field public static final SALESCODE_KOR_KTT_DEFAULT:Ljava/lang/String; = "KT"

.field public static final SALESCODE_KOR_KTT_UNUSED_LIST:Ljava/lang/String; = "MKT/KTT"

.field public static final SALESCODE_KOR_LGT_ALL_LIST:Ljava/lang/String; = "LG/LUC/LUO"

.field public static final SALESCODE_KOR_LGT_DEFAULT:Ljava/lang/String; = "LG"

.field public static final SALESCODE_KOR_LGT_UNUSED_LIST:Ljava/lang/String; = "MLG/LGT"

.field public static final SALESCODE_KOR_SKT_ALL_LIST:Ljava/lang/String; = "SKT/SKC/SKO"

.field public static final SALESCODE_KOR_SKT_DEFAULT:Ljava/lang/String; = "SKT"

.field public static final SALESCODE_KOR_SKT_UNUSED_LIST:Ljava/lang/String; = "MSK"

.field public static final SALESCODE_LTN_OPEN:Ljava/lang/String; = "TFG"

.field public static final SALESCODE_NA_SPR_DEFAULT:Ljava/lang/String; = "SPR"

.field public static final SALESCODE_NA_SPR_LIST:Ljava/lang/String; = "BST/SPR/VMU/XAS"

.field public static final SALESCODE_NA_TMO:Ljava/lang/String; = "TMB"

.field private static final SALESCODE_RIL:Ljava/lang/String; = "ril.sales_code"

.field public static final SALESCODE_SBM:Ljava/lang/String; = "SBM"

.field private static sInstance:Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;


# instance fields
.field private mMultiCscCode:Ljava/lang/String;

.field private mSalesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->sInstance:Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mMultiCscCode:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->loadSalesCode()V

    invoke-virtual {p0}, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->loadMultiCscCode()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/common/Log;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;
    .locals 1

    sget-object v0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->sInstance:Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;

    invoke-direct {v0}, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;-><init>()V

    sput-object v0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->sInstance:Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;

    :cond_0
    sget-object v0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->sInstance:Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;

    return-object v0
.end method


# virtual methods
.method public getMultiCscCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mMultiCscCode:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method public loadMultiCscCode()V
    .locals 2

    new-instance v0, Lcom/samsung/android/common/util/DeviceUtils;

    invoke-direct {v0}, Lcom/samsung/android/common/util/DeviceUtils;-><init>()V

    const-string v1, "/system/omc/code"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/util/DeviceUtils;->readTextFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mMultiCscCode:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiCscCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mMultiCscCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/common/Log;->H(Ljava/lang/String;)V

    return-void
.end method

.method public loadSalesCode()V
    .locals 5

    const-string v3, "ro.csc.sales_code"

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;

    :try_start_0
    const-string v3, "MSK"

    iget-object v4, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SKT"

    iput-object v3, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    iput-object v3, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    const-string v3, "MKT/KTT"

    iget-object v4, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "KT"

    iput-object v3, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/samsung/android/common/Log;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v3, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ""

    iput-object v3, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :try_start_3
    const-string v3, "MLG/LGT"

    iget-object v4, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "LG"

    iput-object v3, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, ""

    iput-object v4, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;

    :cond_4
    throw v3

    :cond_5
    :try_start_4
    const-string v3, "TFG"

    iget-object v4, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ril.product_code"

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TMM/UFN/UFU/COB/CHT/SAM/VMT/TGU/SAL/NBS/PBS/EBE/CRM"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v1, p0, Lcom/samsung/android/common/feature/OperatorFeature$OperatorFeatureBase;->mSalesCode:Ljava/lang/String;

    const-string v3, "Use product code as customerCode for Movistar single binary(TFG)"

    invoke-static {v3}, Lcom/samsung/android/common/Log;->I(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
