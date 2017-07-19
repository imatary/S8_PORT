.class public final enum Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;
.super Ljava/lang/Enum;
.source "KeyguardCropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DualModeView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

.field public static final enum DUAL_MODE_DUPLICATE:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

.field public static final enum DUAL_MODE_EXPAND:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

.field public static final enum DUAL_MODE_LEFT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

.field public static final enum DUAL_MODE_RIGHT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    const-string/jumbo v1, "DUAL_MODE_EXPAND"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_EXPAND:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    new-instance v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    const-string/jumbo v1, "DUAL_MODE_DUPLICATE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_DUPLICATE:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    new-instance v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    const-string/jumbo v1, "DUAL_MODE_LEFT"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_LEFT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    new-instance v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    const-string/jumbo v1, "DUAL_MODE_RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_RIGHT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_EXPAND:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_DUPLICATE:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_LEFT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_RIGHT:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->$VALUES:[Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;
    .locals 1

    const-class v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;
    .locals 1

    sget-object v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->$VALUES:[Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    return-object v0
.end method
