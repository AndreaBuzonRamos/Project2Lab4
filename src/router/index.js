// Composables
import { createRouter, createWebHistory } from 'vue-router'

const routes = [
  {
    path: '/',
    component: () => import('@/layouts/default/Default.vue'),
    children: [
      {
        path: '',
        name: 'Home',
        // route level code-splitting
        // this generates a separate chunk (about.[hash].js) for this route
        // which is lazy-loaded when the route is visited.
        component: () => import(/* webpackChunkName: "home" */ '@/views/Home.vue'),
      },
    ],
  },
  {
    path: '/pokemon',
    component: () => import('@/layouts/default/Default.vue'),
    children: [
      {
        path: '',
        name: 'PokeShop',
        // route level code-splitting
        // this generates a separate chunk (about.[hash].js) for this route
        // which is lazy-loaded when the route is visited.
        component: () => import(/* webpackChunkName: "pokeshop" */ '@/views/PokeShop.vue'),
      },
    ],
  },
  {
    path: '/contact',
    component: () => import('@/layouts/default/Default.vue'),
    children: [
      {
        path: '/contact',
        name: 'Contact',
        component: () => import(/* webpackChunkName: "contact" */ '@/views/Contact.vue'),
      },
    ],
  },
  {
    path: '/panier',
    component: () => import('@/layouts/default/Default.vue'),
    children: [
      {
        path: '/panier',
        name: 'Panier',
        component: () => import(/* webpackChunkName: "panier" */ '@/views/Panier.vue'),
      },
    ],
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes,
})

export default router
