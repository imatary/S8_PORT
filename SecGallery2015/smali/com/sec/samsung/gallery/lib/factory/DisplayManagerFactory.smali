.class public Lcom/sec/samsung/gallery/lib/factory/DisplayManagerFactory;
.super Ljava/lang/Object;
.source "DisplayManagerFactory.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/factory/LibFactory;


# static fields
.field public static final ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

.field public static final CONN_STATE_CHANGEPLAYER_GALLERY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/DisplayManagerFactory;->ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

    const/4 v0, 0x7

    sput v0, Lcom/sec/samsung/gallery/lib/factory/DisplayManagerFactory;->CONN_STATE_CHANGEPLAYER_GALLERY:I

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

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SeDisplayManager;

    invoke-direct {v0, p1}, Lcom/sec/samsung/gallery/lib/se/SeDisplayManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
