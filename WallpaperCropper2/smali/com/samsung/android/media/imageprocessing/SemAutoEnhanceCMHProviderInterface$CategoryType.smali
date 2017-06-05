.class public final enum Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;
.super Ljava/lang/Enum;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CategoryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum CALENDAR_EVENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum LOCATION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum PERSON:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum POI:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum SCENE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum SHOT_MODE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum SUB_SCENE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum USER_TAG:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

.field public static final enum WEATHER:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const-string/jumbo v1, "USER_TAG"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->USER_TAG:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const-string/jumbo v1, "CALENDAR_EVENT"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->CALENDAR_EVENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const-string/jumbo v1, "LOCATION"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->LOCATION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const-string/jumbo v1, "PERSON"

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->PERSON:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const-string/jumbo v1, "SCENE"

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->SCENE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const-string/jumbo v1, "SUB_SCENE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->SUB_SCENE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const-string/jumbo v1, "SHOT_MODE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->SHOT_MODE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const-string/jumbo v1, "POI"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->POI:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const-string/jumbo v1, "WEATHER"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->WEATHER:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->USER_TAG:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->CALENDAR_EVENT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->LOCATION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->PERSON:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->SCENE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->SUB_SCENE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->SHOT_MODE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->POI:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->WEATHER:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;
    .locals 1

    const-class v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceCMHProviderInterface$CategoryType;->mValue:I

    return v0
.end method
