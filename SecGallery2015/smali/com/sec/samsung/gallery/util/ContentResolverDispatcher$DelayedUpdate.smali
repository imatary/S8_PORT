.class Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;
.super Ljava/lang/Object;
.source "ContentResolverDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedUpdate"
.end annotation


# instance fields
.field private final mInsertValue:Landroid/content/ContentValues;

.field private final mSelectArgs:[Ljava/lang/String;

.field private final mSelectionString:Ljava/lang/String;

.field private final mUpdateValue:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;->mUpdateValue:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;->mInsertValue:Landroid/content/ContentValues;

    iput-object p2, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;->mSelectionString:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;->mSelectArgs:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;->mSelectionString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;->mSelectArgs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;->mInsertValue:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher$DelayedUpdate;->mUpdateValue:Landroid/content/ContentValues;

    return-object v0
.end method
