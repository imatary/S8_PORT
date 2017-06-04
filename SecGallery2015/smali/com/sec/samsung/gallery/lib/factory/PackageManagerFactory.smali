.class public Lcom/sec/samsung/gallery/lib/factory/PackageManagerFactory;
.super Ljava/lang/Object;
.source "PackageManagerFactory.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/factory/LibFactory;


# static fields
.field public static final FEATURE_HOVERING_UI:Ljava/lang/String;

.field private static final FEATURE_WFD_SUPPORT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.sec.feature.wfd_support"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/PackageManagerFactory;->FEATURE_WFD_SUPPORT:Ljava/lang/String;

    const-string/jumbo v0, "com.sec.feature.hovering_ui"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/PackageManagerFactory;->FEATURE_HOVERING_UI:Ljava/lang/String;

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

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SePackageManager;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/se/SePackageManager;-><init>()V

    return-object v0
.end method
