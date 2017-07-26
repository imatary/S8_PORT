.class Lcom/navercorp/volleyextensions/volleyer/response/parser/SimpleXmlNetworkResponseParser$PersisterHolder;
.super Ljava/lang/Object;
.source "SimpleXmlNetworkResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navercorp/volleyextensions/volleyer/response/parser/SimpleXmlNetworkResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PersisterHolder"
.end annotation


# static fields
.field private static final persister:Lorg/simpleframework/xml/core/Persister;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    sput-object v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/SimpleXmlNetworkResponseParser$PersisterHolder;->persister:Lorg/simpleframework/xml/core/Persister;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/simpleframework/xml/core/Persister;
    .locals 1

    invoke-static {}, Lcom/navercorp/volleyextensions/volleyer/response/parser/SimpleXmlNetworkResponseParser$PersisterHolder;->getPersister()Lorg/simpleframework/xml/core/Persister;

    move-result-object v0

    return-object v0
.end method

.method private static getPersister()Lorg/simpleframework/xml/core/Persister;
    .locals 1

    sget-object v0, Lcom/navercorp/volleyextensions/volleyer/response/parser/SimpleXmlNetworkResponseParser$PersisterHolder;->persister:Lorg/simpleframework/xml/core/Persister;

    return-object v0
.end method
