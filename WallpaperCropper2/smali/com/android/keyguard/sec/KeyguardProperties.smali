.class public Lcom/android/keyguard/sec/KeyguardProperties;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static final A5_PROJECT:Z

.field private static final A7_PROJECT:Z

.field private static final ACG:Z

.field private static final AIO:Z

.field private static final ATT:Z

.field private static final AUSTRALIAN:Z

.field private static final BERLUTI:Z

.field private static final BMC:Z

.field private static final BST:Z

.field private static final BST_SALES:Z

.field private static final CHAGALL_PROJECT:Z

.field private static final CHN:Z

.field private static final CHN_OPEN:Z

.field private static final CMCC:Z

.field private static final CRI:Z

.field private static final CSP:Z

.field private static final CTC:Z

.field private static final CU:Z

.field private static final DCM:Z

.field private static final E5_PROJECT:Z

.field private static final EUR_OPEN:Z

.field private static final HK:Z

.field private static final HKTW:Z

.field private static final HUT:Z

.field private static final H_PROJECT:Z

.field private static final J_PROJECT:Z

.field private static final KDI:Z

.field private static final KLIMT_PROJECT:Z

.field private static final KOO:Z

.field private static final KOR:Z

.field private static final KOR_OPEN:Z

.field private static final KTT:Z

.field private static final K_PROJECT_MR:Z

.field private static final LDU:Z

.field private static final LENTIS_PROJECT_MR:Z

.field private static final LGT:Z

.field private static final LRA:Z

.field private static final MEGA_PROJECT:Z

.field private static final MTR:Z

.field private static final OPP:Z

.field private static final OPS:Z

.field private static final SBM:Z

.field private static final SCAFE_NAME_AMERICANO:Ljava/lang/String; = "americano"

.field private static final SCAFE_NAME_CAPUCCINO:Ljava/lang/String; = "capuccino"

.field private static final SCAFE_NAME_DUTCH:Ljava/lang/String; = "dutch"

.field private static final SCAFE_NAME_LATTE:Ljava/lang/String; = "latte"

.field private static final SCAFE_NAME_MOCHA:Ljava/lang/String; = "mocha"

.field private static final SCAFE_SHOT_DOUBLE:Ljava/lang/String; = "double"

.field private static final SCAFE_SHOT_HALF:Ljava/lang/String; = "half"

.field private static final SCAFE_SHOT_SINGLE:Ljava/lang/String; = "single"

.field private static final SCAFE_SHOT_TRIPLE:Ljava/lang/String; = "triple"

.field private static final SCAFE_SIZE_GRANDE:Ljava/lang/String; = "grande"

.field private static final SCAFE_SIZE_SHORT:Ljava/lang/String; = "short"

.field private static final SCAFE_SIZE_TALL:Ljava/lang/String; = "tall"

.field private static final SCAFE_SIZE_VENTI:Ljava/lang/String; = "venti"

.field private static final SCAFE_SYRUP_MAPLE:Ljava/lang/String; = "maple"

.field private static final SCAFE_SYRUP_SUGAR:Ljava/lang/String; = "sugar"

.field private static final SEE:Z

.field private static final SKT:Z

.field private static final SPI:Z

.field private static final SPR:Z

.field private static final SPR_SALES:Z

.field private static final TAB_A_PROJECT:Z

.field private static final TAB_S2_PROJECT:Z

.field private static final TAG:Ljava/lang/String; = "KeyguardProperties"

.field private static final TEL:Z

.field private static final TFN:Z

.field private static final TLP:Z

.field private static final TMO:Z

.field private static final TW:Z

.field private static final TWO:Z

.field private static final T_PROJECT:Z

.field private static final USA:Z

.field private static final USA_WIFI:Z

.field private static final USCC:Z

.field private static final USE_WATER_DROPLET:Z

.field private static final VAU:Z

.field private static final VMC:Z

.field private static final VMU:Z

.field private static final VZW:Z

.field private static final XAR:Z

.field private static final XAS:Z

.field private static final XSA:Z

.field private static final ZERO_PROJECT:Z

.field private static final ZIG:Z

.field private static final mBuildCharacteristics:Ljava/lang/String;

.field private static final mCountryCode:Ljava/lang/String;

.field private static final mProductName:Ljava/lang/String;

.field private static final mRoamingTextNotAllowedOnDualClock:Z

.field private static mSCafeCream:Ljava/lang/String;

.field private static mSCafeExtra:Ljava/lang/String;

.field private static mSCafeName:Ljava/lang/String;

.field private static mSCafeShot:Ljava/lang/String;

.field private static mSCafeSize:Ljava/lang/String;

.field private static mSCafeSyrup:Ljava/lang/String;

.field private static final mSalesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mCountryCode:Ljava/lang/String;

    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mBuildCharacteristics:Ljava/lang/String;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "spi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPI:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "xar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAR:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "mtr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->MTR:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "vmu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMU:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "vzw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VZW:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "att"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "aio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AIO:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zig"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZIG:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "spr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, ".*tmo.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TMO:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "usc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USCC:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "bst"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tfn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TFN:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "xas"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAS:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "cri"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CRI:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "csp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CSP:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "skt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SKT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "ktt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KTT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "lgt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LGT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CMCC:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CU:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "ctc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CTC:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HK:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TW:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HKTW:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHN_OPEN:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "xx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->EUR_OPEN:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "kx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KOR_OPEN:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "wifiue"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USA_WIFI:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "lra"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LRA:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "acg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ACG:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "bmc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BMC:Z

    const-string/jumbo v0, "VMC"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMC:Z

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VZW:Z

    if-eqz v0, :cond_f

    :cond_2
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USA:Z

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHN_OPEN:Z

    if-eqz v0, :cond_10

    :cond_3
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHN:Z

    const-string/jumbo v0, "PAP"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LDU:Z

    const-string/jumbo v0, "TEL"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TEL:Z

    const-string/jumbo v0, "VAU"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VAU:Z

    const-string/jumbo v0, "HUT"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HUT:Z

    const-string/jumbo v0, "BST"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST_SALES:Z

    const-string/jumbo v0, "OPS"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->OPS:Z

    const-string/jumbo v0, "OPP"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->OPP:Z

    const-string/jumbo v0, "TLP"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TLP:Z

    const-string/jumbo v0, "XSA"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XSA:Z

    const-string/jumbo v0, "Australia"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :goto_4
    move v0, v1

    :goto_5
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AUSTRALIAN:Z

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    if-eqz v0, :cond_14

    :cond_4
    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR_SALES:Z

    const-string/jumbo v0, "DCM"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->DCM:Z

    const-string/jumbo v0, "KDI"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KDI:Z

    const-string/jumbo v0, "SBM"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SBM:Z

    const-string/jumbo v0, "TWO"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TWO:Z

    const-string/jumbo v0, "SEE"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SEE:Z

    const-string/jumbo v0, "KOO"

    sget-object v3, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KOO:Z

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SKT:Z

    if-eqz v0, :cond_15

    :cond_5
    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KOR:Z

    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.scafe.size"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeSize:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.scafe.shot"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeShot:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.scafe.syrup"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeSyrup:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.scafe.cream"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeCream:Ljava/lang/String;

    const-string/jumbo v0, "ro.build.scafe.extra"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeExtra:Ljava/lang/String;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zero"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_6
    move v0, v2

    :goto_8
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZERO_PROJECT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "klte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_7
    move v0, v2

    :goto_9
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->K_PROJECT_MR:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "lentislte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LENTIS_PROJECT_MR:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "slte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BERLUTI:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "mega2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->MEGA_PROJECT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "ja3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_8
    move v0, v2

    :goto_a
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->J_PROJECT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "h3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_9
    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->H_PROJECT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tblte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_a
    move v0, v2

    :goto_c
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->T_PROJECT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "chagall"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHAGALL_PROJECT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "klimt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KLIMT_PROJECT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gt510"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_b
    move v0, v2

    :goto_d
    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TAB_A_PROJECT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gts210"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_c
    move v1, v2

    :goto_e
    sput-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->TAB_S2_PROJECT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "a7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A7_PROJECT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "a5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A5_PROJECT:Z

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "e5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->E5_PROJECT:Z

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mRoamingTextNotAllowedOnDualClock:Z

    const-string/jumbo v0, "WATERDROPLET, NONE, SPARKLINGBUBBLES"

    const-string/jumbo v1, "WATERDROPLET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USE_WATER_DROPLET:Z

    return-void

    :cond_d
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "uc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "attactive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, ".*MetroPCS.*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "mtr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto/16 :goto_1

    :cond_f
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TMO:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USCC:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMU:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CRI:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USA_WIFI:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AIO:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZIG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->MTR:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAR:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TFN:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMU:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAS:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LRA:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ACG:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CSP:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BMC:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMC:Z

    if-nez v0, :cond_2

    move v0, v1

    goto/16 :goto_2

    :cond_10
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CU:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CMCC:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CTC:Z

    if-nez v0, :cond_3

    move v0, v1

    goto/16 :goto_3

    :cond_11
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TEL:Z

    if-eqz v0, :cond_13

    :cond_12
    move v0, v2

    goto/16 :goto_5

    :cond_13
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VAU:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HUT:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST_SALES:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->OPS:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->OPP:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TLP:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XSA:Z

    if-nez v0, :cond_12

    goto/16 :goto_4

    :cond_14
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->BST:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TFN:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VMU:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->XAS:Z

    if-nez v0, :cond_4

    move v0, v1

    goto/16 :goto_6

    :cond_15
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KTT:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LGT:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KOO:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KOR_OPEN:Z

    if-nez v0, :cond_5

    move v0, v1

    goto/16 :goto_7

    :cond_16
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SCV31"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "marinelteuc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SC-05G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SC-04G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "404SC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto/16 :goto_8

    :cond_17
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "k3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "kmini"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "kccat6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SC-04F"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SCL23"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SC-02G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto/16 :goto_9

    :cond_18
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "jsglte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "ks01lte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "jalte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "jflte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "jftdd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "jactivelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    goto/16 :goto_a

    :cond_19
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "ha3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "hlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "htdlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    goto/16 :goto_b

    :cond_1a
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tbelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "trlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "trhlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "trhplte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tbhplte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "trelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tre3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SC-01G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "SCL24"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "muscat3calte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tre3ca"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    goto/16 :goto_c

    :cond_1b
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gt58"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gt5note"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    goto/16 :goto_d

    :cond_1c
    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gts28"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_e
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasCocktailBar(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.sec.feature.cocktailbar"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hideCameraShortCutonLegacyModel()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hideOwnerInfoOnNotification()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v0

    return v0
.end method

.method public static isA5Project()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A5_PROJECT:Z

    return v0
.end method

.method public static isA7Project()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->A7_PROJECT:Z

    return v0
.end method

.method public static isATTFeature()Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->AIO:Z

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static isAUSFeature()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AUSTRALIAN:Z

    return v0
.end method

.method public static isAmericanoLook()Z
    .locals 2

    const-string/jumbo v0, "americano"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isAutoWipeFeature()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VZW:Z

    return v0
.end method

.method public static isBigFontModelinEasyMode()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isBrilliantCutSpecialTypeEnabled()Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->CHAGALL_PROJECT:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->KLIMT_PROJECT:Z

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static isCMCCModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CMCC:Z

    return v0
.end method

.method public static isCTCModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CTC:Z

    return v0
.end method

.method public static isCUModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CU:Z

    return v0
.end method

.method public static isChinaFeature()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHN:Z

    return v0
.end method

.method public static isClockMovedByWeatherVisiblity()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v0

    return v0
.end method

.method public static isCurrentLanguageArabic()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2
.end method

.method public static isDCMModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->DCM:Z

    return v0
.end method

.method public static isDcmLauncher(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncherWithoutSecure(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->isNoneSecureLock()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDcmLauncherWithoutSecure(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->DCM:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "com.nttdocomo.android.dhome"

    invoke-static {p0, v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreferedActivity(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDirectCallToEcc()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->AUSTRALIAN:Z

    return v0
.end method

.method public static isDisplayDualImsi(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "LGT"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "KeyguardProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDisplayDualImsi isNetworkRoaming = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return v4

    :cond_1
    const-string/jumbo v0, "LUC"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "LUO"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isDownloadableThemeApplied(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public static isDualClockCenterAlign(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isA7Project()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isA5Project()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isE5Project()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static isDualLCDDevice(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDualLCDFolderDevice(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDualLCDDevice(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isFolderDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isE5Project()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->E5_PROJECT:Z

    return v0
.end method

.method public static isEffectProcessSeparated()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isFolderDevice(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFolderOpened(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v0, :cond_2

    :goto_0
    return v3

    :cond_0
    const-string/jumbo v0, "KeyguardProperties"

    const-string/jumbo v1, "isFolderOpened: Folder is opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string/jumbo v0, "KeyguardProperties"

    const-string/jumbo v1, "isFolderOpened: Folder is closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "KeyguardProperties"

    const-string/jumbo v1, "isFolderOpened: HardKeyboard setting is undefined"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isGENIFeature()Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "TNZ"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "TNG"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2
.end method

.method public static isHKFeature()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HK:Z

    return v0
.end method

.method public static isHKTWFeature()Z
    .locals 2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->HK:Z

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->TW:Z

    or-int/2addr v0, v1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->HKTW:Z

    or-int/2addr v0, v1

    return v0
.end method

.method public static isHProject()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->H_PROJECT:Z

    return v0
.end method

.method public static isIgnoreNationalRoaming()Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "XEO"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isNationalRoaming()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    const-string/jumbo v0, "KeyguardProperties"

    const-string/jumbo v1, "isIgnoreNationalRoaming() = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string/jumbo v0, "PRT"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "VAU"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "KeyguardProperties"

    const-string/jumbo v1, "isIgnoreNationalRoaming() = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public static isJProject()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->J_PROJECT:Z

    return v0
.end method

.method public static isJapanFeature()Z
    .locals 2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->DCM:Z

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->KDI:Z

    or-int/2addr v0, v1

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->SBM:Z

    or-int/2addr v0, v1

    return v0
.end method

.method public static isKDIModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KDI:Z

    return v0
.end method

.method public static isKModelWeatherDeamon()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isA7Project()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isA5Project()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMegaProject()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isKProject()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->K_PROJECT_MR:Z

    return v0
.end method

.method public static isKoreaFeature()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KOR:Z

    return v0
.end method

.method public static isKttModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KTT:Z

    return v0
.end method

.method public static isLatestPhoneUX()Z
    .locals 2

    const-string/jumbo v0, "capuccino"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLatestShortcutEffect()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static isLatestTabletUX()Z
    .locals 2

    const-string/jumbo v0, "latte"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLatestUX()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static isLegacyTabletUX()Z
    .locals 2

    const-string/jumbo v0, "mocha"

    sget-object v1, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLegacyUX()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "mocha"

    sget-object v2, Lcom/android/keyguard/sec/KeyguardProperties;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static isLgtModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LGT:Z

    return v0
.end method

.method public static isLowFestival()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->LENTIS_PROJECT_MR:Z

    return v0
.end method

.method public static isMegaProject()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->MEGA_PROJECT:Z

    return v0
.end method

.method public static isMobileKeyboardCovered(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isZeroProject()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v0, v3, :cond_0

    return v3
.end method

.method public static isMovableAffordance()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    return v0
.end method

.method public static isMultiSIMDevice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isNationalRoaming()Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const-string/jumbo v0, "gsm.sim.operator.numeric"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gsm.operator.numeric"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return v3

    :cond_1
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isNationalRoamingForTWO(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "21901"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TWO:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SEE:Z

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method public static isNeedLockscreenCapture()Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->TAB_A_PROJECT:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->TAB_S2_PROJECT:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static isNotRequireSIMPUKCode()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TMO:Z

    return v0
.end method

.method public static isOneHandOperationEnabled(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isOneStepUnlockNotAllowed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isPhoneShortcutEnable(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1120053

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "set_shortcuts_phone"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v2, :cond_3

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USA:Z

    if-nez v0, :cond_1

    goto :goto_1
.end method

.method public static isPreferedActivity(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPresidentialCMASFeature()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    return v0
.end method

.method public static isPreviewShortcutEnabled()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRemoveCircleViewArrow()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static isRichLockEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string/jumbo v2, "com.samsung.android.keyguardwallpaperupdator"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    return v0
.end method

.method public static isRoamingTextNotAllowedOnDualClock()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->mRoamingTextNotAllowedOnDualClock:Z

    return v0
.end method

.method public static isSIMToastEnabled()Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->TEL:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->AIO:Z

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static isSPRModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR_SALES:Z

    return v0
.end method

.method public static isSPRPLMN()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SPR:Z

    return v0
.end method

.method public static isShowHighLowTemp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSimpleHelpText()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAUSFeature()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSingleClockCenterAlign(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isA7Project()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isA5Project()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isE5Project()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static isSktModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->SKT:Z

    return v0
.end method

.method public static isSupportActivityZoneLaunch()Z
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "marinelteuc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportBlendedFilter()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    return v0
.end method

.method public static isSupportEdgeNotification()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportElasticPlugin()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportLongShadowEffect(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "LONGSHADOW"

    const-string/jumbo v2, "LONGSHADOW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCurrentLanguageArabic()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportMobileKeyboard()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportPhoneShortcutOnLDU()Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->LDU:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportUnpackMode()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTMOModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TMO:Z

    return v0
.end method

.method public static isTProject()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->T_PROJECT:Z

    return v0
.end method

.method public static isTabAProject()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->TAB_A_PROJECT:Z

    return v0
.end method

.method public static isTablet()Z
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/KeyguardProperties;->mBuildCharacteristics:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isUSAFeature()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USA:Z

    return v0
.end method

.method public static isUSIMPersoFeatureEnable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isVZWModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->VZW:Z

    return v0
.end method

.method public static isZeroProject()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->ZERO_PROJECT:Z

    return v0
.end method

.method public static shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "lockscreen.rot_override"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->config_enableLockScreenRotation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static shouldNotShowArrowHorizontal()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->KLIMT_PROJECT:Z

    return v0
.end method

.method public static shouldNotShowArrowVertical()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->CHAGALL_PROJECT:Z

    return v0
.end method

.method public static shouldShowPopupForDualClock(Landroid/content/Context;)Z
    .locals 9

    const/4 v7, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestTabletUX()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "my_profile_enabled"

    invoke-static {v1, v4, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v1, v3, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "dualclock_menu_settings"

    invoke-static {v4, v5, v2, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eq v4, v3, :cond_5

    move v4, v2

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "homecity_timezone"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    move v5, v2

    :goto_2
    const-string/jumbo v6, "KeyguardProperties"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "is Romaing on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n dualClock on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n is homtime null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n isProfile on : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isIgnoreNationalRoaming()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_2
    :goto_3
    move v3, v2

    :cond_3
    return v3

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    move v4, v3

    goto :goto_1

    :cond_6
    move v5, v3

    goto :goto_2

    :cond_7
    return v2

    :cond_8
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    :goto_4
    move v3, v2

    :cond_a
    return v3

    :cond_b
    if-eqz v4, :cond_9

    if-nez v5, :cond_a

    goto :goto_4

    :cond_c
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    if-eqz v1, :cond_3

    goto :goto_3
.end method

.method public static useBigClockWithNoti()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static useIndependentLockTimeout()Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->ATT:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/android/keyguard/sec/KeyguardProperties;->AIO:Z

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static useLatestPinView()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static usePatternBGEffect(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "WATERDROPLET, NONE, SPARKLINGBUBBLES"

    const-string/jumbo v2, "WATERCOLOUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lockscreen_ripple_effect"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static useWaterDropletEffect(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/sec/KeyguardProperties;->USE_WATER_DROPLET:Z

    return v0
.end method
