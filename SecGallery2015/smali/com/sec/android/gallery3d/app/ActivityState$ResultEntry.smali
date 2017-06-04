.class public Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;
.super Ljava/lang/Object;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/ActivityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultEntry"
.end annotation


# instance fields
.field private requestCode:I

.field private resultCode:I

.field private resultData:Landroid/content/Intent;

.field final synthetic this$0:Lcom/sec/android/gallery3d/app/ActivityState;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/ActivityState;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->this$0:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->requestCode:I

    return v0
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->resultCode:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/ActivityState$ResultEntry;->resultData:Landroid/content/Intent;

    return-object v0
.end method
