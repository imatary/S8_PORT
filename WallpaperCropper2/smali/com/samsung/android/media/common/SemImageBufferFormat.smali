.class public final enum Lcom/samsung/android/media/common/SemImageBufferFormat;
.super Ljava/lang/Enum;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/media/common/SemImageBufferFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/common/SemImageBufferFormat;

.field public static final enum ARGB32:Lcom/samsung/android/media/common/SemImageBufferFormat;

.field public static final enum BGR24:Lcom/samsung/android/media/common/SemImageBufferFormat;

.field public static final enum BGRA32:Lcom/samsung/android/media/common/SemImageBufferFormat;

.field public static final enum GRAY32:Lcom/samsung/android/media/common/SemImageBufferFormat;

.field public static final enum GRAY8:Lcom/samsung/android/media/common/SemImageBufferFormat;

.field public static final enum RGB24:Lcom/samsung/android/media/common/SemImageBufferFormat;

.field public static final enum RGB565:Lcom/samsung/android/media/common/SemImageBufferFormat;

.field public static final enum RGBA32:Lcom/samsung/android/media/common/SemImageBufferFormat;

.field public static final enum UNKNOWN:Lcom/samsung/android/media/common/SemImageBufferFormat;

.field public static final enum YUV2:Lcom/samsung/android/media/common/SemImageBufferFormat;

.field public static final enum YUV420P:Lcom/samsung/android/media/common/SemImageBufferFormat;

.field public static final enum YUV420SP:Lcom/samsung/android/media/common/SemImageBufferFormat;

.field public static final enum YV16:Lcom/samsung/android/media/common/SemImageBufferFormat;

.field public static final enum YVU9:Lcom/samsung/android/media/common/SemImageBufferFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    const-string/jumbo v1, "RGBA32"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/media/common/SemImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->RGBA32:Lcom/samsung/android/media/common/SemImageBufferFormat;

    new-instance v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    const-string/jumbo v1, "BGRA32"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/common/SemImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->BGRA32:Lcom/samsung/android/media/common/SemImageBufferFormat;

    new-instance v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    const-string/jumbo v1, "RGB24"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/media/common/SemImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->RGB24:Lcom/samsung/android/media/common/SemImageBufferFormat;

    new-instance v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    const-string/jumbo v1, "BGR24"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/media/common/SemImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->BGR24:Lcom/samsung/android/media/common/SemImageBufferFormat;

    new-instance v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    const-string/jumbo v1, "RGB565"

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/media/common/SemImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->RGB565:Lcom/samsung/android/media/common/SemImageBufferFormat;

    new-instance v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    const-string/jumbo v1, "GRAY32"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/common/SemImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->GRAY32:Lcom/samsung/android/media/common/SemImageBufferFormat;

    new-instance v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    const-string/jumbo v1, "GRAY8"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/common/SemImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->GRAY8:Lcom/samsung/android/media/common/SemImageBufferFormat;

    new-instance v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    const-string/jumbo v1, "YUV2"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/common/SemImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->YUV2:Lcom/samsung/android/media/common/SemImageBufferFormat;

    new-instance v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    const-string/jumbo v1, "YVU9"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/common/SemImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->YVU9:Lcom/samsung/android/media/common/SemImageBufferFormat;

    new-instance v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    const-string/jumbo v1, "YUV420P"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/common/SemImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->YUV420P:Lcom/samsung/android/media/common/SemImageBufferFormat;

    new-instance v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    const-string/jumbo v1, "YUV420SP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/common/SemImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->YUV420SP:Lcom/samsung/android/media/common/SemImageBufferFormat;

    new-instance v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    const-string/jumbo v1, "YV16"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/common/SemImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->YV16:Lcom/samsung/android/media/common/SemImageBufferFormat;

    new-instance v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    const-string/jumbo v1, "ARGB32"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/common/SemImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->ARGB32:Lcom/samsung/android/media/common/SemImageBufferFormat;

    new-instance v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/common/SemImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->UNKNOWN:Lcom/samsung/android/media/common/SemImageBufferFormat;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/samsung/android/media/common/SemImageBufferFormat;

    sget-object v1, Lcom/samsung/android/media/common/SemImageBufferFormat;->RGBA32:Lcom/samsung/android/media/common/SemImageBufferFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/common/SemImageBufferFormat;->BGRA32:Lcom/samsung/android/media/common/SemImageBufferFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/media/common/SemImageBufferFormat;->RGB24:Lcom/samsung/android/media/common/SemImageBufferFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/media/common/SemImageBufferFormat;->BGR24:Lcom/samsung/android/media/common/SemImageBufferFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/media/common/SemImageBufferFormat;->RGB565:Lcom/samsung/android/media/common/SemImageBufferFormat;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/media/common/SemImageBufferFormat;->GRAY32:Lcom/samsung/android/media/common/SemImageBufferFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/media/common/SemImageBufferFormat;->GRAY8:Lcom/samsung/android/media/common/SemImageBufferFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/media/common/SemImageBufferFormat;->YUV2:Lcom/samsung/android/media/common/SemImageBufferFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/media/common/SemImageBufferFormat;->YVU9:Lcom/samsung/android/media/common/SemImageBufferFormat;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/media/common/SemImageBufferFormat;->YUV420P:Lcom/samsung/android/media/common/SemImageBufferFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/media/common/SemImageBufferFormat;->YUV420SP:Lcom/samsung/android/media/common/SemImageBufferFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/media/common/SemImageBufferFormat;->YV16:Lcom/samsung/android/media/common/SemImageBufferFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/media/common/SemImageBufferFormat;->ARGB32:Lcom/samsung/android/media/common/SemImageBufferFormat;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/media/common/SemImageBufferFormat;->UNKNOWN:Lcom/samsung/android/media/common/SemImageBufferFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->$VALUES:[Lcom/samsung/android/media/common/SemImageBufferFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/common/SemImageBufferFormat;
    .locals 1

    const-class v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/common/SemImageBufferFormat;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/common/SemImageBufferFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/common/SemImageBufferFormat;->$VALUES:[Lcom/samsung/android/media/common/SemImageBufferFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/common/SemImageBufferFormat;

    return-object v0
.end method
