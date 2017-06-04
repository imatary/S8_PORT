.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector$EventInfo;
.super Ljava/lang/Object;
.source "FilterTagCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventInfo"
.end annotation


# instance fields
.field private final mEndTime:J

.field private final mStartTime:J

.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector;Ljava/lang/String;JJ)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector$EventInfo;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector$EventInfo;->mTitle:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector$EventInfo;->mStartTime:J

    iput-wide p5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector$EventInfo;->mEndTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector;Ljava/lang/String;JJLcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector$1;)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector$EventInfo;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector$EventInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector$EventInfo;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector$EventInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector$EventInfo;->mEndTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector$EventInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterTagCollector$EventInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method
