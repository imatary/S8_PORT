.class final enum Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;
.super Ljava/lang/Enum;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FilterParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum BILATERAL_SAMPLING_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum BILATERAL_SAMPLING_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum BILATERAL_SIGMA_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum BILATERAL_SIGMA_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum BLUR:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum CLIP_LIMIT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum DCT_SIGMA:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum DCT_THRESHOLD:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum NOISE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string/jumbo v1, "BILATERAL_SIGMA_SPATIAL"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SIGMA_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string/jumbo v1, "BILATERAL_SIGMA_RANGE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SIGMA_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string/jumbo v1, "BILATERAL_SAMPLING_SPATIAL"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SAMPLING_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string/jumbo v1, "BILATERAL_SAMPLING_RANGE"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SAMPLING_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string/jumbo v1, "DCT_SIGMA"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->DCT_SIGMA:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string/jumbo v1, "DCT_THRESHOLD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->DCT_THRESHOLD:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string/jumbo v1, "CLIP_LIMIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->CLIP_LIMIT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string/jumbo v1, "NOISE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->NOISE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string/jumbo v1, "BLUR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BLUR:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SIGMA_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SIGMA_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SAMPLING_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SAMPLING_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->DCT_SIGMA:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->DCT_THRESHOLD:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->CLIP_LIMIT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->NOISE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BLUR:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;
    .locals 1

    const-class v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    return-object v0
.end method
