.class final enum Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;
.super Ljava/lang/Enum;
.source "AbstractFilterTagCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PREDEFINED_TIME"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

.field public static final enum BEFORE_YEAR:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

.field public static final enum LAST_YEAR:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

.field public static final enum PAST_MONTH:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

.field public static final enum PAST_SIX_MONTH:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

.field public static final enum PAST_WEEK:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    const-string/jumbo v1, "PAST_WEEK"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->PAST_WEEK:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    const-string/jumbo v1, "PAST_MONTH"

    invoke-direct {v0, v1, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->PAST_MONTH:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    const-string/jumbo v1, "PAST_SIX_MONTH"

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->PAST_SIX_MONTH:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    const-string/jumbo v1, "LAST_YEAR"

    invoke-direct {v0, v1, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->LAST_YEAR:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    const-string/jumbo v1, "BEFORE_YEAR"

    invoke-direct {v0, v1, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->BEFORE_YEAR:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->PAST_WEEK:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->PAST_MONTH:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->PAST_SIX_MONTH:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->LAST_YEAR:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->BEFORE_YEAR:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->$VALUES:[Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    return-object v0
.end method

.method public static values()[Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->$VALUES:[Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    invoke-virtual {v0}, [Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector$PREDEFINED_TIME;

    return-object v0
.end method
