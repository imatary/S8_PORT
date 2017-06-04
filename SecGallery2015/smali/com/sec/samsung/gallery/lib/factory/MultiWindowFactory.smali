.class public Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;
.super Ljava/lang/Object;
.source "MultiWindowFactory.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/factory/LibFactory;


# static fields
.field public static final FREE_STYLE:I

.field public static final ZONE_B:I

.field private static final ZONE_FULL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;->ZONE_B:I

    const/4 v0, 0x1

    sput v0, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;->ZONE_FULL:I

    const/4 v0, 0x2

    sput v0, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;->FREE_STYLE:I

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

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SeMultiWindow;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Lcom/sec/samsung/gallery/lib/se/SeMultiWindow;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
