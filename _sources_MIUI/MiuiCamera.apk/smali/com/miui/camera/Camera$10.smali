.class Lcom/miui/camera/Camera$10;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/camera/Camera;->showColoreffectView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/Camera;


# direct methods
.method constructor <init>(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 4079
    iput-object p1, p0, Lcom/miui/camera/Camera$10;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 4083
    iget-object v0, p0, Lcom/miui/camera/Camera$10;->this$0:Lcom/miui/camera/Camera;

    const v1, 0x7f0d0019

    invoke-virtual {v0, v1}, Lcom/miui/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4084
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 4081
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 4080
    return-void
.end method
