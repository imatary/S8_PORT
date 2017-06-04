.class synthetic Lcom/sec/samsung/gallery/view/utils/DataPath$1;
.super Ljava/lang/Object;
.source "DataPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/utils/DataPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$samsung$gallery$core$TabTagType:[I

.field static final synthetic $SwitchMap$com$sec$samsung$gallery$core$ViewByFilterType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->values()[Lcom/sec/samsung/gallery/core/ViewByFilterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/samsung/gallery/view/utils/DataPath$1;->$SwitchMap$com$sec$samsung$gallery$core$ViewByFilterType:[I

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/utils/DataPath$1;->$SwitchMap$com$sec$samsung$gallery$core$ViewByFilterType:[I

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sec/samsung/gallery/view/utils/DataPath$1;->$SwitchMap$com$sec$samsung$gallery$core$ViewByFilterType:[I

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sec/samsung/gallery/view/utils/DataPath$1;->$SwitchMap$com$sec$samsung$gallery$core$ViewByFilterType:[I

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/TabTagType;->values()[Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/samsung/gallery/view/utils/DataPath$1;->$SwitchMap$com$sec$samsung$gallery$core$TabTagType:[I

    :try_start_3
    sget-object v0, Lcom/sec/samsung/gallery/view/utils/DataPath$1;->$SwitchMap$com$sec$samsung$gallery$core$TabTagType:[I

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/TabTagType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sec/samsung/gallery/view/utils/DataPath$1;->$SwitchMap$com$sec$samsung$gallery$core$TabTagType:[I

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/TabTagType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
