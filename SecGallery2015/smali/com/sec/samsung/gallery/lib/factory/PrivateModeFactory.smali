.class public Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;
.super Ljava/lang/Object;
.source "PrivateModeFactory.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/factory/LibFactory;


# static fields
.field public static final ACTION_PRIVATE_MODE_OFF:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;->ACTION_PRIVATE_MODE_OFF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/se/SePrivateManager;-><init>()V

    return-object v0
.end method
