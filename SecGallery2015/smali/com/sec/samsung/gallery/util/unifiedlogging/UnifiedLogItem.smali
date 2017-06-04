.class public Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;
.super Ljava/lang/Object;
.source "UnifiedLogItem.java"


# instance fields
.field private mCategory:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;

.field private mLogInfos:[Ljava/lang/Object;

.field private mSubType:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->mCategory:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;

    iput-object p2, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->mSubType:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->mCategory:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$Category;

    return-object v0
.end method

.method public getLogInfos()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->mLogInfos:[Ljava/lang/Object;

    return-object v0
.end method

.method public getSubType()Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->mSubType:Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLoggingType$SubType;

    return-object v0
.end method

.method public varargs setObject([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/unifiedlogging/UnifiedLogItem;->mLogInfos:[Ljava/lang/Object;

    return-void
.end method
